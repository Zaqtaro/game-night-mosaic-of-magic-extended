--- This expansion file is required to be in /client/ to work.
--- Rename file to replace `NAME_OF_EXPANSION` in  `gameNight - implementMoMEx - NAME_OF_EXPANSION`

--- FOR ART
-- Place artwork with in a sub folder named `SETNAME` (to be changed) in `Item_momCards/`
--- For example: `Item_momCards/Prima/`
-- `SET NAME` should match the set you're adding.

-- This line is required as a means to load the MOM module.
local MOM = require "gameNight - implementMoM"

--- SETNAME needs to be equal to the directory inside of Item_momCards/
MOM.sets["Desert Dreams"] = {

    cards = {
        ["White"] = {
            "Jafar the Gentle", "Sultan's Guard", "Sand Strider", "Just Desert", "Holy Quest",
            "Sultan Sufyan", "Desert Riders", "Devotion", "Forgiven Smith", "Narra Hazade",
            "Battle Pachyderm"
        },

        ["Blue"] = {
            "Desert Serpent", "Sandfish Oil", "Sky Wanderers", "Colossal Carapace", "Oasis Leviathan",
            "Trade Vessel", "Elder of the Waves", "Mirage Djinn", "Desert Efreet", "Sandbad the Sailor",
            "Chaotic Transformation"
        },

        ["Black"] = {
            "Desert Enchantresses", "Hajjir the Wise", "Sand Dune Raiders", "Sentinel Creature", "Desert Ogress",
            "Tempest Efreet", "Abyssal Djinn", "Dune Ghoul", "Forgotten Pit", "Enchantress Sovereign",
            "Rock Slingers"
        },

        ["Red"] = {
            "Adilan", "Baba Ali", "Ali of Mirage", "Avian Damsel", "Wandering Tribes",
            "Desert Jackal", "Sand Ape", "Ironpeak", "Mirage Djinn", "Roc Egg",
            "Wydan Efreet"
        },

        ["Green"] = {
            "Desert Whirlwind", "Sandstorm Twister", "Nectar of the Oasis", "Erhnam Spirit", "Ghazban Giant",
            "Inferno Efreet", "Transfiguration", "Desert Asp", "Sand Tempest", "Melodious Tree",
            "Desert Wolf"
        },

        ["Relics"] = {
            "Adilan's Lantern", "Adilan's Band", "Flask of Sufyan", "Bronze Golem", "CaptuRed City",
            "Whirling Sword", "Midnight Steed", "Soaring Rug", "Jandor's Circle", "Jandor's Packs",
            "Gemmed Avian", "Sand Monoliths", "Ring of Miran", "Sandals of Adnan"
        },

        ["Black Domain"] = {"Swamp"},
        ["White Domain"] = {"Plains"},
        ["Green Domain"] = {"Forest"},
        ["Blue Domain"] = {"Island"},
        ["Red Domain"] = {"Mountain"},

        ["Domain"] = {
            "Market of Mirage", "City of Bronze", "The Wastes",
            "Gemstone Valley", "Elephant Graveyard", "Oasis of Waku",
            "Library of Sufyan", "Desert Spring" },
    },

    rarities = {
        Rare = {
            "White 5", "White 6", "White 9", "White 10",
            "Blue 5", "Blue 7", "Blue 8", "Blue 9",
            "Black 2", "Black 4", "Black 6", "Black 7",
            "Red 1", "Red 3", "Red 9", "Red 11",
            "Green 3", "Green 4", "Green 6", "Green 10",
            "Relics 1", "Relics 2", "Relics 3", "Relics 5",
            "Relics 6", "Relics 7", "Relics 9", "Relics 10",
            "Relics 12", "Relics 13", "Domain 4", "Domain 5",
            "Domain 6",
        },

        Uncommon = {
            "White 1", "White 4", "Blue 6", "Blue 10",
            "Black 8", "Black 10", "Red 2", "Red 8",
            "Green 1", "Green 2", "Relics 4", "Relics 8",
            "Relics 11", "Relics 14", "Domain 1", "Domain 2",
            "Domain 7", "Domain 8",
        },

        Common = {
            "White 2", "White 3", "White 7", "White 8", "White 11",
            "Blue 1", "Blue 2", "Blue 3", "Blue 4", "Blue 11",
            "Black 1", "Black 3", "Black 5", "Black 9", "Black 11",
            "Red 4", "Red 5", "Red 6", "Red 7", "Red 10",
            "Green 5", "Green 7", "Green 8", "Green 9", "Green 11",
            "Domain 3",
        },

        Domain = {
            "Red Domain 1", "Blue Domain 1", "Green Domain 1", "White Domain 1", "Black Domain 1",
        },
    },

}


MOM.preBuiltSets.DDAll = {
    
    cards = { "White 1", "White 2", "White 3", "White 4", "White 5", "White 6", "White 7", "White 8", "White 9", "White 10", "White 11",
              "Blue 1", "Blue 2", "Blue 3", "Blue 4", "Blue 5", "Blue 6", "Blue 7", "Blue 8", "Blue 9", "Blue 10", "Blue 11",
              "Black 1", "Black 2", "Black 3", "Black 4", "Black 5", "Black 6", "Black 7", "Black 8", "Black 9", "Black 10", "Black 11",
              "Red 1", "Red 2", "Red 3", "Red 4", "Red 5", "Red 6", "Red 7", "Red 8", "Red 9", "Red 10", "Red 11",
              "Green 1", "Green 2", "Green 3", "Green 4", "Green 5", "Green 6", "Green 7", "Green 8", "Green 9", "Green 10", "Green 11",
              "Relics 1", "Relics 2", "Relics 3", "Relics 4", "Relics 5", "Relics 6", "Relics 7",
              "Relics 8", "Relics 9", "Relics 10", "Relics 11", "Relics 12", "Relics 13", "Relics 14",
              "Domain 1", "Domain 2", "Domain 3", "Domain 4", "Domain 5", "Domain 6", "Domain 7", "Domain 8",
              "Red Domain 1", "Blue Domain 1", "Green Domain 1", "White Domain 1", "Black Domain 1",},

    set = "Desert Dreams"
}
