function widget:GetInfo()
	return {
		name = "Command Queue Manager",
		desc = "Skips current command or cancels the last command in command",
		author = "[DE]LSR",
		date = "5 Apr, 2022",
		license = "GNU GPL, v2 or later",
		layer = 1, --  after the normal widgets
		enabled = true,
	}
end

-- Handlers
function widget:Initialize()
	widgetHandler:AddAction("command_skip_current", SkipCurrentCommand, nil, "p")
	widgetHandler:AddAction("command_cancel_last", CancelLastCommand, nil, "p")
end

-- Locals
local spGetSelectedUnits = Spring.GetSelectedUnits
local spGetUnitCurrentCommand = Spring.GetUnitCurrentCommand
local spGetCommandQueueSize = Spring.GetCommandQueue
local spGiveOrderToUnit = Spring.GiveOrderToUnit
local spGetUnitCommands = Spring.GetUnitCommands

local CMDREPAIR = CMD.REPAIR
local CMDRECLAIM = CMD.RECLAIM
local CMDGUARD = CMD.GUARD
local CMDPATROL = CMD.PATROL

-- Main functions
function SkipCurrentCommand()
	ProcessSelectedUnits(function(id)
		RemoveCommand(id, 1, spGetCommandQueueSize(id, 0))
	end)
end

function CancelLastCommand()
	ProcessSelectedUnits(function(id)
		local commandQueueSize = spGetCommandQueueSize(id, 0)

		if (not commandQueueSize) or commandQueueSize < 1 then
			return
		end

		RemoveCommand(id, commandQueueSize, commandQueueSize)
	end)
end

-- Helper functions
function RemoveCommand(unitID, cmdIndex, commandQueueSize)
	local cmdID, _, cmdTag, _, cmdParam2 = spGetUnitCurrentCommand(unitID, cmdIndex)
	local commandDeleted = false
	if (cmdID == CMDRECLAIM or cmdID == CMDREPAIR) and cmdParam2 then -- second param means it is an area order
		local _, _, cmdTag2 = spGetUnitCurrentCommand(unitID, cmdIndex + 1)
		spGiveOrderToUnit(unitID, CMD.REMOVE, { cmdTag2, cmdTag }, 0)
		commandDeleted = true
	elseif (cmdID == CMDREPAIR) and cmdIndex ~= commandQueueSize then
		--dirty way to remove weird guard behaviors
		local cmdID2, _, cmdTag2 = spGetUnitCurrentCommand(unitID, cmdIndex + 1)
		if cmdID2 == CMDGUARD then
			spGiveOrderToUnit(unitID, CMD.REMOVE, { cmdTag2, cmdTag }, 0)
			commandDeleted = true
		end
	elseif (cmdID == CMDGUARD) and (cmdIndex ~= 1) then
		--again same thing
		local cmdID2, _, cmdTag2 = spGetUnitCurrentCommand(unitID, cmdIndex - 1)
		if cmdID2 == CMDREPAIR then
			spGiveOrderToUnit(unitID, CMD.REMOVE, { cmdTag, cmdTag2 }, 0)
			commandDeleted = true
		end
	elseif (cmdID == CMD.FIGHT) and (cmdIndex == 1) then  --removes patrol commands too
		local commands = spGetUnitCommands(unitID, -1)
		if commands and (commands[2].id == CMDPATROL) then
			commandQueueSize = commandQueueSize - 2
			spGiveOrderToUnit(unitID, CMD.STOP, {}, {})

			for i = 1, #commands do
				if i == 1 then
					spGiveOrderToUnit(unitID, CMD.MOVE, commands[i].params, {})
				end
				if (i ~= cmdIndex) then
					spGiveOrderToUnit(unitID, commands[i].id, commands[i].params, {"shift"})
				end
			end
			commandDeleted = true
		end
	end
	if cmdID and not commandDeleted then
		spGiveOrderToUnit(unitID, CMD.REMOVE, { cmdTag }, 0)
	end

	-- If there was only one command on queue, issue stop (keeps performing command otherwise)
	if commandQueueSize == 1 then
		spGiveOrderToUnit(unitID, CMD.STOP, {}, 0)
	end
end

function ProcessSelectedUnits(processCommandFunc)
	local selectedUnits = spGetSelectedUnits()

	for i = 1, #selectedUnits do
		local id = selectedUnits[i]
		processCommandFunc(id)
	end
end
