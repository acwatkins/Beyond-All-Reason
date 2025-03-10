return {
	legcar = {
		maxacc = 0.02428,
		maxdec = 0.02428,
		energycost = 11000,
		metalcost = 550,
		buildpic = "LEGCAR.DDS",
		buildtime = 11000,
		canmove = true,
		category = "ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "42 12 42",
		collisionvolumetype = "Box",
		usepiececollisionvolumes = 1,
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		health = 3600,
		maxslope = 16,
		speed = 51,
		maxwaterdepth = 0,
		movementclass = "HOVER3",
		nochasecategory = "VTOL",
		objectname = "Units/LEGCAR.s3o",
		script = "Units/LEGCAR.cob",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 450,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.9768,
		turnrate = 410,
		customparams = {
			unitgroup = 'weapon',
			model_author = "EnderRobo",
			normaltex = "unittextures/leg_normal.dds",
			subfolder = "hovercraft",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 -0.5 0",
				collisionvolumescales = "30 20 40",
				collisionvolumetype = "Box",
				damage = 2079,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 390,
				object = "Units/legcar_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1040,
				footprintx = 3,
				footprintz = 3,
				metal = 156,
				object = "Units/arm3X3D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small-impulse",
				[2] = "custom:waterwake-small-hover",
				[3] = "custom:bowsplash-small-hover",
				[4] = "custom:hover-wake-small",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "hovt1canok",
			},
			select = {
				[1] = "hovt1cansel",
			},
		},
		weapondefs = {
			shot = {
				accuracy = 7,
				areaofeffect = 16,
				avoidfeature = false,
				projectiles = 14,
				burnblow = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.015,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1.5,
				intensity = 0.8,
				name = "Medium Shotgun",
				noselfdamage = true,
				ownerExpAccWeight = 4.0,
				proximitypriority = 3,
				range = 321,
				reloadtime = 2,
				rgbcolor = "1 0.95 0.4",
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "kroggie2xs",
				soundstartvolume = 3,
				sprayangle = 1900,
				thickness = 0.6,
				tolerance = 6000,
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 960,
				damage = {
					default = 40,
					vtol = 13,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "SHOT",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
