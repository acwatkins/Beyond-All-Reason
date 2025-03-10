return {
	legdecom = {
		maxacc = 0.18,
		activatewhenbuilt = true,
		autoheal = 0,
		maxdec = 1.125,
		energycost = 13000,
		metalcost = 750,
		builddistance = 145,
		builder = true,
		buildpic = "LEGCOM.DDS",
		buildtime = 27000,
		cancapture = true,
		candgun = true,
		canmove = true,
		capturable = false,
		capturespeed = 900,
		category = "ALL WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		cloakcost = 30,
		cloakcostmoving = 180,
		collisionvolumeoffsets = "0 3 0",
		collisionvolumescales = "28 52 28",
		collisionvolumetype = "CylY",
		decoyfor = "legcom",
		energymake = 15,
		energystorage = 50,
		explodeas = "decoycommander",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
   		holdsteady = true,
		idleautoheal = 5,
		idletime = 1800,
		mass = 4900,
		health = 3700,
		maxslope = 20,
		speed = 37.5,
		maxwaterdepth = 35,
		mincloakdistance = 50,
		movementclass = "COMMANDERBOT",
		nochasecategory = "VTOL",
		objectname = "Units/LEGCOM.s3o",
		radardistance = 700,
		radaremitheight = 40,
		reclaimable = false,
    	releaseheld  = true,
		script = "Units/legcom.cob",
		seismicsignature = 0,
		selfdestructas = "decoycommanderSelfd",
		showplayername = true,
		sightdistance = 450,
		sonardistance = 450,
		terraformspeed = 750,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 1133,
		upright = true,
		workertime = 300,
		buildoptions = {
			[1] = "cormine1",
			[2] = "cormine2",
			[3] = "cormine3",
			[4] = "legsolar",
			[5] = "legwin",
			[6] = "legmstor",
			[7] = "corestor",
			[8] = "legmex",
			[9] = "legeconv",
			[10] = "legrad",
			[11] = "leglht",
			[12] = "legrl",
			[13] = "cortide",
			[14] = "coruwms",
			[15] = "coruwes",
			[16] = "corfmkr",
		},
		customparams = {
			unitgroup = 'buildert2',
			decoyfor = "legcom",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "corbots/t2",
			techlevel = 2,
			isdecoycommander = true,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
				[3] = "custom:footstep-medium",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			cloak = "kloak2",
			repair = "repair2",
			uncloak = "kloak2un",
			underattack = "warning1",
			unitcomplete = "kccorsel",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "kcormov",
			},
			select = {
				[1] = "armcomsel",
			},
		},
		weapondefs = {
			legcomlaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.1,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:laserhit-small-yellow",
				firestarter = 70,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7.7,
				name = "Light close-quarters g2g laser",
				noselfdamage = true,
				range = 300,
				reloadtime = 0.37,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "heatray1",
				soundtrigger = 1,
				targetmoveerror = 0.05,
				thickness = 2,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					default = 75,
					subs = 5,
				},
			},
			torpedo = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = true,
				burnblow = true,
				cegtag = "torpedotrail-tiny",
				collidefriendly = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.55,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 1.8,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cortorpedo.s3o",
				name = "Level1TorpedoLauncher",
				noselfdamage = true,
				predictboost = 1,
				range = 300,
				reloadtime = 2,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 230,
				tracks = false,
				turnrate = 2500,
				turret = true,
				waterweapon = true,
				weaponacceleration = 50,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 200,
				damage = {
					default = 250,
					subs = 125,
				},
			},
			ferret_missile = {
				areaofeffect = 16,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailaa",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 0,
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 72,
				flighttime = 2.5,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Pop-up rapid-fire g2a missile launcher",
				noselfdamage = true,
				range = 450,
				reloadtime = 1.2,
				smoketrail = true,
				smokePeriod = 6,
				smoketime = 12,
				smokesize = 4.6,
				smokecolor = 0.95,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "packohit",
				soundhitwet = "splshbig",
				soundstart = "packolau",
				soundtrigger = true,
				startvelocity = 1,
				texture1 = "null",
				texture2 = "smoketrailaa3",
				tolerance = 9950,
				tracks = true,
				turnrate = 68000,
				turret = true,
				weaponacceleration = 1200,
				weapontimer = 2,
				weapontype = "MissileLauncher",
				weaponvelocity = 1000,
				damage = {
					vtol = 150,
					commanders = 1,
				},
			},
			disintegrator = {
				areaofeffect = 36,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				bouncerebound = 0,
				cegtag = "dgunprojectile",
				commandfire = true,
				craterboost = 0,
				cratermult = 0.6,
				edgeeffectiveness = 0.15,
				energypershot = 150,
				explosiongenerator = "custom:expldgun",
				firestarter = 100,
				firesubmersed = false,
				groundbounce = true,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Disintegrator",
				noexplode = true,
				noselfdamage = true,
				range = 262,
				reloadtime = 0.9,
				soundhit = "xplomas2",
				soundhitwet = "sizzle",
				soundstart = "disigun1",
				soundtrigger = true,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontimer = 4.2,
				weapontype = "DGun",
				weaponvelocity = 300,
				damage = {
					default = 40,
				},
			},
		},
		weapons = {
			[1] = {
				def = "legcomlaser",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "TORPEDO",
				onlytargetcategory = "NOTAIR"
			},
			[3] = {
				def = "disintegrator",
				onlytargetcategory = "NOTSUB",
			},
			[4] = {
				badtargetcategory = "NOTAIR GROUNDSCOUT",
				def = "FERRET_MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
