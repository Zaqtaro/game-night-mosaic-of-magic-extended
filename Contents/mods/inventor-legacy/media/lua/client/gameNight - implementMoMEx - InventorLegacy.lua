local MOM = require "gameNight - implementMoM"

MOM.sets["Inventor's Legacy"] = {

    cards = {
        ["White"] = {"Machina Historian", "Machina Forger", "Relic Safeguard", "Circle of Protection: Relics",
					 "Inhibition Field", "Martyrs of Verdinia", "Arcane Reversal" },

		["Blue"] = {"Elrin's Restoration", "Arcane Flux", "Elrin's Recall", "Power Relic",
					"Reconstruction Protocol", "Sage of Verdinia", "Transmute Relic" },

		["Black"] = {"Relic Possession", "Portal to Zorim", "Cursed Wind", "Zorim Gremlins",
					 "Priest of Malakar", "Etheral Poltergeist", "Zorim Demon" },

		["Red"] = {"Relic Blast", "Machina Devourer", "Overload Detonation", "Dwarven Engineer",
				   "Dog-Goblin Tinkerers", "Orcish Engineers", "Shatterblast" },

		["Green"] = {"Verdinian Pixies", "Verdinian Treefolk", "Citanul Keeper", "Relic Crumble",
					 "Gaea's Sentinel", "Arcane Drain", "Titania's Hymn" },

		["Relics"] = {"Amulet of Elrin", "Armageddon Chronometer", "Malakar’s Altar", "Malakar’s War Gear",
					  "Malakar’s Transmutation", "Battering Construct", "Bronze Inscription", "Candelabra of Thales",
					  "Clay Guardian", "Chrono-Avian", "Colossus of Verdinia", "Azure Helm", "Cursed Restraints",
					  "Dragon Automaton", "Lorian's Cane", "Verdinian Sylex", "Grapeshot Ballista", "Ivory Obelisk",
					  "Elrin's Tome", "Mightstone Relic", "Grindstone", "Alaric's War Engine", "Obelisk of Reversal",
					  "Onulet Construct", "Ornithopter Drone", "Primal Construct", "Rakalite Shield", "Rocket Barrage",
					  "Morphing Construct", "Staff of Zegon", "Su-Chi Automaton", "Tablet of Erutia", "Coffin of Thales",
					  "Wand of Thales", "Weaponry of Thales", "Tetrabots", "The Torture Rack", "Tri-Construct",
					  "Elrin's Sentinel", "Elrin's Chalice", "Elrin's Miter", "Wall of Pikes", "Weakstone Relic",
					  "Yotian Guardian" },

		["Black Domain"] = {"Swamp"},
        ["White Domain"] = {"Plains"},
        ["Green Domain"] = {"Forest"},
        ["Blue Domain"] = {"Island"},
        ["Red Domain"] = {"Mountain"},

        ["Domain"] = {"Alaric’s Foundry", "Alaric's Workshop", "Ruinous Expanse", "Elrin's Mine",
					  "Elrin's Power Matrix", "Elrin's Tower" },
    },


	rarities = {
        	Rare = {"White 1", "Blue 3", "Black 7", "Red 7", "Green 5", "Relic 7", "Relic 8", "Relic 10",
					 "Relic 11", "Relic 12", "Relic 16", "Relic 22", "Relic 23", "Relic 29", "Relic 33",
					 "Relic 37", "Relic 39", "Relic 40", "Relic 42", "domain 2",},

		Uncommon = {"White 4", "White 5", "White 6", "Blue 2", "Blue 4", "Blue 7", "Black 2", "Black 3", "Black 6",
					"Red 3", "Red 4", "Red 5", "Green 3", "Green 6", "Green 7", "Relic 2", "Relic 3", "Relic 4",
					"Relic 5", "Relic 13", "Relic 15", "Relic 18", "Relic 19", "Relic 20", "Relic 21", "Relic 24",
					"Relic 26", "Relic 27", "Relic 28", "Relic 31", "Relic 34", "Relic 35", "Relic 38", "Relic 43",
					"Relic 44", "Domain 1", "Domain 3", "Domain 4", },

		Common = {"White 2", "White 3", "White 7", "Blue 1", "Blue 5", "Blue 6", "Black 1", "Black 4", "Black 5",
				  "Red 1", "Red 2", "Red 6", "Green 1", "Green 2", "Green 4", "Relic 1", "Relic 6", "Relic 9",
				  "Relic 14", "Relic 17", "Relic 25", "Relic 30", "Relic 32", "Relic 41", "Relic 45", "domain 5",
				  "domain 6"},

        Domain = { "Red Domain 1", "Blue Domain 1", "Green Domain 1", "White Domain 1", "Black Domain 1", },
    },

}

MOM.preBuiltSets.ILAll = {
    
    cards = { "White 1", "White 2", "White 3", "White 4", "White 5", "White 6", "White 7",
			  "Blue 1", "Blue 2", "Blue 3", "Blue 4", "Blue 5", "Blue 6", "Blue 7",
			  "Black 1", "Black 2", "Black 3", "Black 4", "Black 5", "Black 6", "Black 7",
			  "Red 1", "Red 2", "Red 3", "Red 4", "Red 5", "Red 6", "Red 7",
			  "Green 1", "Green 2", "Green 3", "Green 4", "Green 5", "Green 6", "Green 7",
			  "Relic 1", "Relic 2", "Relic 3", "Relic 4", "Relic 5", "Relic 6", "Relic 7",
			  "Relic 8", "Relic 9", "Relic 10", "Relic 11", "Relic 12", "Relic 13", "Relic 14",
			  "Relic 15", "Relic 16", "Relic 17", "Relic 18", "Relic 19", "Relic 20", "Relic 21",
			  "Relic 22", "Relic 23", "Relic 24", "Relic 25", "Relic 26", "Relic 27", "Relic 28",
			  "Relic 29", "Relic 30", "Relic 31", "Relic 32", "Relic 33", "Relic 34", "Relic 35",
			  "Relic 36", "Relic 37", "Relic 38", "Relic 39", "Relic 40", "Relic 41", "Relic 42",
			  "Relic 43", "Relic 44", --"Relic 45", no 45 found
			  "Domain 1", "Domain 2", "Domain 3", "Domain 4", "Domain 5", "Domain 6",
			  "Red Domain 1", "Blue Domain 1", "Green Domain 1", "White Domain 1", "Black Domain 1", },

    set = "Inventor’s Legacy"
}