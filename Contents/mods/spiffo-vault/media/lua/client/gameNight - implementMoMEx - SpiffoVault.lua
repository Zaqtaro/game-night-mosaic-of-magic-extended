local MOM = require "gameNight - implementMoM"

MOM.sets["Spiffo's Vault"] = {

    cards = {
        ["White"] = {"Machina Historian", "Machina Forger", "Relic Safeguard", "Circle of Protection: Relics", 	"Inhibition Field", "Martyrs of Verdinia", "Arcane Reversal"
	},

	["Blue"] = {"Elrin's Restoration", "Arcane Flux", "Elrin's Recall", "Power Relic", "Reconstruction 	Protocol", "Sage of Verdinia", "Transmute Relic"
	},

	["Black"] = {"Relic Possession", "Portal to Zorim", "Cursed Wind", "Zorim Gremlins", "Priest of 	Malakar", "Etheral Poltergeist", "Zorim Demon"
	},

	["Red"] = {"Relic Blast", "Machina Devourer", "Overload Detonation", "Dwarven Engineer", "Dog-Goblin 	Tinkerers", "Orcish Engineers", "Shatterblast"
	}, 

	["Green"] = {"Verdinian Pixies", "Verdinian Treefolk", "Citanul Keeper", "Relic Crumble", "Gaea's 	Sentinel", "Arcane Drain", "Titania's Hymn"
	},
	
	["Relics"] = {"Amulet of Elrin", "Armageddon Chronometer", "Malakar’s Altar", "Malakar’s War Gear", "Malakar’s Transmutation", "Battering Construct", "Bronze Inscription", "Candelabra of Thales", "Clay Guardian", "Chrono-Avian", "Colossus of Verdinia", "Azure Helm", "Cursed Restraints", "Dragon Automaton", "Lorian's Cane", "Verdinian Sylex", "Grapeshot Ballista", "Ivory Obelisk", "Elrin's Tome", "Mightstone Relic", "Grindstone", "Alaric's War Engine", "Obelisk of Reversal", "Onulet Construct", "Ornithopter Drone", "Primal Construct", "Rakalite Shield", "Rocket Barrage", "Morphing Construct", "Staff of Zegon", "Su-Chi Automaton", "Tablet of Erutia", "Coffin of Thales", "Wand of Thales", "Weaponry of Thales", "Tetrabots", "The Torture Rack", "Tri-Construct", "Elrin's Sentinel", "Elrin's Chalice", "Elrin's Miter", "Wall of Pikes", "Weakstone Relic", "Yotian Guardian"
	},

	["Black Domain"] = {"Swamp"},
        ["White Domain"] = {"Plains"},
        ["Green Domain"] = {"Forest"},
        ["Blue Domain"] = {"Island"},
        ["Red Domain"] = {"Mountain"},

        ["Domain"] = {"Alaric’s Foundry", "Alaric's Workshop", "Ruinous Expanse", "Elrin's Mine", "Elrin's Power Matrix", "Elrin's Tower"
	 },
    },
	rarities = {
        	Rare = {
			"white 1", "blue 3", "black 7", "red 7", "green 5", "relic 7", "relic 8", "relic 10", 			"relic 11", "relic 12", "relic 16", "relic 22", "relic 23", "relic 29", "relic 33", 			"relic 37", "relic 39", "relic 40", "relic 42", "domain 2",
			},
		Uncommon = {"white 4", "white 5", "white 6", "blue 2", "blue 4", "blue 7", "black 2", "black 3", "black 6", "red 3", "red 4", "red 5", "green 3", "green 6", "green 7", "relic 2", "relic 3", "relic 4", "relic 5", "relic 13", "Relic 15", "Relic 18", "Relic 19", "Relic 20", "Relic 21", "Relic 24", "Relic 26", "Relic 27", "Relic 28", "Relic 31", "Relic 34", "Relic 35", "Relic 38", "Relic 43", "Relic 44", "Domain 1", "Domain 3", "Domain 4"},

		Common = {"white 2", "white 3", "white 7", "blue 1", "blue 5", "blue 6", "black 1", "black 4", "black 5", "red 1", "red 2", "red 6", "green 1", "green 2", "green 4", "relic 1", "relic 6", "relic 9", "relic 14", "relic 17", "relic 25", "relic 30", "relic 32", "relic 41", "relic 45", "domain 5", "domain 6"},

        Domain = {
            "Red Domain 1", "Blue Domain 1", "Green Domain 1", "White Domain 1", "Black Domain 1",
        },
    },

}

MOM.preBuiltSets.SVAll = {
    
    cards = { "White 1", "White 2", "White 3", "White 4", "White 5", "White 6", "White 7",
"Blue 1", "Blue 2", "Blue 3", "Blue 4", "Blue 5", "Blue 6", "Blue 7",
              "Black 1", "Black 2", "Black 3", "Black 4", "Black 5", "Black 6", "Black 7",
              "Red 1", "Red 2", "Red 3", "Red 4", "Red 5", "Red 6", "Red 7",
              "Green 1", "Green 2", "Green 3", "Green 4", "Green 5", "Green 6", "Green 7", 
              "Relics 1", "Relics 2", "Relics 3", "Relics 4", "Relics 5", "Relics 6", "Relics 7",
              "Relics 8", "Relics 9", "Relics 10", "Relics 11", "Relics 12", "Relics 13", "Relics 14",, "Relics 15", "Relics 16", "Relics 17", "Relics 18", "Relics 19", "Relics 20", "Relics 21", "Relics 22", "Relics 23", "Relics 24", "Relics 25", "Relics 26", "Relics 27", "Relics 28", "Relics 29", "Relics 30", "Relics 31”, "Relics 32”, "Relics 33”, "Relics 34”, "Relics 35”, "Relics 36”, "Relics 37”, "Relics 38”, "Relics 39”, "Relics 40”, "Relics 41”, "Relics 42”, "Relics 43”, "Relics 44”, "Relics 45”,
              "Domain 1", "Domain 2", "Domain 3", "Domain 4", "Domain 5", "Domain 6",
              "Red Domain 1", "Blue Domain 1", "Green Domain 1", "White Domain 1", "Black Domain 1",},

    set = "Spiffo's Vault"
}