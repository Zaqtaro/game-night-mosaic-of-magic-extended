local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler

local MTG = {}

MTG.alphaCards = { --"MTG Alpha "

    ["Relics"] = {
        "Juggernaut", "Gauntlet of Might", "Glasses of Urza", "Jayemdae Tome", "Disrupting Scepter",
        "Conservator", "Sol Ring", "Sunglasses of Urza", "Wooden Sphere", "Black Lotus", "Mox Emerald",
        "Rod of Ruin", "Celestial Prism", "Throne of Bone", "Ivory Cup", "Winter Orb", "Mox Jet",
        "Chaos Orb", "Time Vault", "Mox Pearl", "Jade Statue", "Cyclopean Tomb", "Mox Ruby", "Mox Sapphire",
        "Black Vise", "Crystal Rod", "Basalt Monolith", "Dingus Egg", "Illusionary Mask", "Iron Star",
        "The Hive", "Howling Mine", "Obsianus Golem", "Living Wall", "Jade Monolith", "Kormus Bell",
        "Forcefield", "Helm of Chatzuk", "Copper Tablet", "Soul Net", "Icy Manipulator", "Clockwork Beast",
        "Library of Leng", "Mana Vault", "Meekstone", "Nevinyrral's Disk", "Ankh of Mishra",
    },

    ["Black"] = {
        "Demonic Attorney", "Nether Shadow", "Mind Twist", "Dark Ritual", "Scathe Zombies", "Darkpact",
        "Pestilence", "Frozen Shade", "Cursed Domain", "Raise Dead", "Black Knight", "Paralyze", "Nightmare",
        "Hypnotic Specter", "Plague Rats", "Wall of Bone", "Gloom", "Will-O-The-Wisp", "Warp Artifact",
        "Contract from Below", "Word of Command", "Unholy Strength", "Animate Dead", "Nettling Imp",
        "Demonic Tutor", "Deathlace", "Demonic Hordes", "Howl from Beyond", "Bog Wraith", "Drain Life",
        "Royal Assassin", "Sengir Vampire", "Bad Moon", "Scavenging Ghoul", "Lich", "Zombie Master",
        "Weakness", "Simulacrum", "Lord of the Pit", "Deathgrip ", "Drudge Skeletons", "Terror",
        "Sacrifice", "Fear", "Evil Presence", "Sinkhole",
    },

    ["White"] = {
        "Death Ward", "Serra Angel", "Blessing", "Samite Healer", "Mesa Pegasus", "Holy Strength",
        "Healing Salve", "Red Ward", "Lance", "Animate Wall", "Consecrate Domain", "Righteousness",
        "Savannah Lions", "Veteran Bodyguard", "Personal Incarnation", "Sanctuary",
        "Circle of Protection: Red", "Castle", "Holy Armor", "Wrath of God", "Wall of Swords",
        "Blaze of Glory", "Reverse Damage", "Blue Ward", "Circle of Protection: White",
        "Circle of Protection: Blue", "Balance", "Karma", "Pearled Unicorn", "Northern Paladin",
        "Armageddon", "White Knight", "Resurrection", "White Ward", "Swords to Plowshares",
        "Farmstead", "Purelace", "Disenchant", "Green Ward", "Circle of Protection: Green",
        "Black Ward", "Conversion", "Benalish Hero", "Guardian Angel", "Crusade", "Circle of Protection: Black",
    },

    ["Green"] = {
        "Aspect of Wolf", "Wild Growth", "Ley Druid", "Thicket Basilisk", "Gaea's Liege", "Lifeforce",
        "Berserk", "Llanowar Elves", "Fog", "Grizzly Bears", "Wall of Ice", "Living Artifact", "War Mammoth",
        "Channel", "Craw Wurm", "Timber Wolves", "Regrowth", "Ironroot Treefolk", "Regeneration", "Kudzu",
        "Wall of Brambles", "Stream of Life", "Natural Selection", "Fastbond", "Verduran Enchantress",
        "Tsunami", "Cockatrice", "Ice Storm", "Wall of Wood", "Shanodin Dryads", "Living Domains", "Giant Spider",
        "Tranquility", "Scryb Sprites", "Instill Energy", "Fungusaur", "Birds of Paradise", "Hurricane",
        "Lifelace", "Camouflage", "Web", "Giant Growth", "Lure", "Wanderlust", "Force of Nature", "Elvish Archers",
    },

    ["Blue"] = {
        "Psychic Venom", "Clone", "Creature Bond", "Drain Power", "Prodigal Sorcerer", "Phantom Monster",
        "Time Walk", "Wall of Air", "Siren's Call", "Sleight of Mind", "Sea Serpent", "Pirate Ship",
        "Power Leak", "Jump", "Stasis", "Volcanic Eruption", "Psionic Blast", "Timetwister", "Water Elemental",
        "Unsummon", "Spell Blast", "Steal Artifact", "Control Magic", "Vesuvan Doppelganger", "Mana Short",
        "Ancestral Recall", "Air Elemental", "Flight", "Animate Relic", "Braingeyser", "Twiddle",
        "Wall of Water", "Mahamoti Djinn", "Magical Hack", "Merfolk of the Pearl Trident", "Thoughtlace",
        "Lord of Atlantis", "Blue Elemental Blast", "Phantasmal Terrain", "Power Sink", "Invisibility",
        "Lifetap", "Feedback", "Counterspell", "Phantasmal Forces", "Copy Artifact",
    },

    ["Red"] = {
        "Shivan Dragon", "Granite Gargoyle", "Wall of Fire", "Flashfires", "Fork", "Earthquake", "Fire Elemental",
        "Lightning Bolt", "Ironclaw Orcs", "Fireball", "Mons's Goblin Raiders", "Earth Elemental", "Tunnel",
        "Sedge Troll", "Orcish Artillery", "Earthbind", "Burrowing", "Orcish Oriflamme", "Keldon Warlord",
        "Disintegrate", "Stone Giant", "Mana Flare", "False Orders", "Smoke", "Hurloon Minotaur",
        "Red Elemental Blast", "Gray Ogre", "Roc of Kher Ridges", "Chaoslace", "Dragon Whelp",
        "Wheel of Fortune", "Power Surge", "Raging River", "Manabarbs", "Goblin King", "Stone Rain",
        "Goblin balloon Brigade", "Shatter", "Rock Hydra", "Firebreathing", "Two-Headed Giant of Foriys",
        "Uthden Troll", "Dwarven Warriors", "Wall of Stone", "Hill Giant", "Dwarven Demolition Team",
    },

    ["Spells"] = {},
    ["Special Domain"] = {},

    ["Black Domain"] = { "Swamp", "Swamp", "Swamp"},
    ["White Domain"] = { "Plains", "Plains", "Plains"},
    ["Green Domain"] = { "Forest", "Forest", "Forest"},
    ["Blue Domain"] = { "Island", "Island", "Island"},
    ["Red Domain"] = { "Mountain", "Mountain", "Mountain"},

    ["Blue White Domain"] = { "Tundra" },
    ["Black Blue Domain"] = { "Underground Sea" },
    ["White Black Domain"] = { "Scrubland" },
    ["Red Black Domain"] = { "Badlands" },
    ["Red White Domain"] = { "Plateau" },
    ["Green Red Domain"] = { "Taiga" },
    ["White Green Domain"] = { "Savannah" },
    ["Green Blue Domain"] = { "Tropical Island" },
    ["Black Green Domain"] = { "Bayou" },
    ["Blue Red Domain"] = { "Volcanic Island" },

}

MTG.catalogue = {}
MTG.altNames = {}

MTG.alphaRare = {
    "Relics 2", "Relics 5", "Relics 8", "Relics 11", "Relics 16", "Relics 17", "Relics 18",
    "Relics 19", "Relics 20", "Relics 22", "Relics 23", "Relics 28", "Relics 29", "Relics 35",
    "Relics 36", "Relics 37", "Relics 38", "Relics 44", "Relics 45", "Black 2", "Black 3", "Black 6",
    "Black 18", "Black 19", "Black 20", "Black 21", "Black 26", "Black 36", "Black Blue Domain 1", "Black Green Domain 1",
    "Blue Red Domain 1", "Blue 4", "Blue 7", "Blue 10", "Blue 12", "Blue 15", "Blue 16", "Blue 18", "Blue 25", "Blue 26",
    "Blue 33", "Blue 34", "Blue 37", "Blue 46", "Blue White Domain 1", "Green 5", "Green 16", "Green 20", "Green 23",
    "Green 25", "Green 27", "Green 31", "Green 37", "Green 39", "Green 41", "Green 45", "Green Blue Domain 1",
    "Green Red Domain 1", "Red 1", "Red 2", "Red 5", "Red 6", "Red 22", "Red 24", "Red 31", "Red 32", "Red 33",
    "Red 34", "Red 35", "Red 39", "Red Black Domain 1", "Red White Domain 1", "White 3", "White 12", "White 13",
    "White 14", "White 15", "White 20", "White 22", "White 27", "White 31", "White Black Domain 1", "White Green Domain 1",
}

MTG.alphaUncommon = {
    "Relics 1", "Relics 6", "Relics 7", "Relics 8", "Relics 9", "Relics 12", "Relics 13",
    "Relics 14", "Relics 15", "Relics 21", "Relics 25", "Relics 26", "Relics 27", "Relics 30",
    "Relics 33", "Relics 34", "Relics 39", "Relics 40", "Relics 41", "Relics 43", "Black 9",
    "Black 11", "Black 14", "Black 16", "Black 17", "Black 23", "Black 24", "Black 25", "Black 29", "Black 32",
    "Black 34", "Black 38", "Black 40", "Black 43", "Black 45", "Blue 2", "Blue 8", "Blue 9", "Blue 17", "Blue 19",
    "Blue 22", "Blue 23", "Blue 27", "Blue 29", "Blue 32", "Blue 42", "Blue 43", "Blue 44", "Blue 45", "Green 3",
    "Green 4", "Green 6", "Green 7", "Green 11", "Green 14", "Green 17", "Green 21", "Green 26", "Green 28",
    "Green 35", "Green 38", "Green 40", "Green 43", "Green 44", "Red 3", "Red 4", "Red 7", "Red 12", "Red 13",
    "Red 15", "Red 17", "Red 18", "Red 19", "Red 21", "Red 30", "Red 37", "Red 42", "Red 44", "Red 46", "White 2",
    "White 8", "White 9", "White 11", "White 18", "White 21", "White 24", "White 28", "White 32", "White 33",
    "White 34", "White 35", "White 39", "White 41", "White 42",
}

MTG.alphaCommon = {
    "Black 4", "Black 5", "Black 7", "Black 8", "Black 10", "Black 12", "Black 15", "Black 22", "Black 30",
    "Black 37", "Black 41", "Black 42", "Black 44", "Black 46", "Blue 1", "Blue 3", "Blue 5", "Blue 11",
    "Blue 13", "Blue 14", "Blue 20", "Blue 21", "Blue 28", "Blue 31", "Blue 35", "Blue 38", "Blue 39",
    "Blue 40", "Blue 41", "Green 2", "Green 8", "Green 9", "Green 10", "Green 13", "Green 15", "Green 18",
    "Green 19", "Green 22", "Green 30", "Green 32", "Green 33", "Green 34", "Green 42", "Red 8", "Red 9",
    "Red 10", "Red 11", "Red 16", "Red 20", "Red 23", "Red 25", "Red 26", "Red 27", "Red 36", "Red 38",
    "Red 40", "Red 43", "Red 45", "White 1", "White 4", "White 5", "White 7", "White 17", "White 19",
    "White 25", "White 26", "White 29", "White 38", "White 40", "White 43", "White 44",
}

MTG.alphaDomain = {
    "Red Domain 1", "Red Domain 2", "Red Domain 3", "Blue Domain 1", "Blue Domain 2", "Blue Domain 3",
    "Green Domain 1", "Green Domain 2", "Green Domain 3", "White Domain 1", "White Domain 2", "White Domain 3",
    "Black Domain 1", "Black Domain 2", "Black Domain 3",
}


MTG.colorCodedRarity = {Domain={}, Common={}, Uncommon={}, Rare={}}

--- Build entire catalogue as a deck
for set,cards in pairs(MTG.alphaCards) do
    for i,card in pairs(cards) do
        local cardID = "MTG Alpha "..set.." "..i
        MTG.altNames[cardID] = card

        local keyed = false
        for rarity,data in pairs(MTG.colorCodedRarity) do
            if not keyed then
                for n,c in pairs(MTG["alpha"..rarity]) do
                    if c == (set.." "..i) then
                        MTG.colorCodedRarity[rarity][set] = MTG.colorCodedRarity[rarity][set] or {}
                        table.insert(MTG.colorCodedRarity[rarity][set], c)
                        keyed = true
                    end
                end
            end
        end

        table.insert(MTG.catalogue, cardID)
    end
end
deckActionHandler.addDeck("mtgCards", MTG.catalogue, MTG.altNames)


applyItemDetails.MTG = {}

function applyItemDetails.MTG.rollDomain(rarity)
    --The chance of getting a basic Domain instead of another card is approximately:
    -- 4.13% for rares, 21.5% for uncommon and 38.84% for commons.
    local chance = rarity and (rarity == "Rare" and 4.13 or rarity == "Uncommon" and 21.5 or rarity == "Common" and 38.84)
    if chance then
        return (ZombRandFloat(0.0,100.0) < chance)
    end
    return false
end


function applyItemDetails.MTG.weighedProbability(outcomesAndWeights)
    local totalWeight = 0
    for outcome, weight in pairs(outcomesAndWeights) do totalWeight = totalWeight + weight end
    local randomNumber = ZombRand(totalWeight)+1
    local cumulativeWeight = 0
    for outcome, weight in pairs(outcomesAndWeights) do
        cumulativeWeight = cumulativeWeight + weight
        if randomNumber <= cumulativeWeight then
            return outcome
        end
    end
end


function applyItemDetails.MTG.rollCardOfParticularColor(rarity, set)
    local cardPool = MTG.colorCodedRarity[rarity][set]
    return ("MTG Alpha "..cardPool[ZombRand(#cardPool)+1])
end


function applyItemDetails.MTG.rollCard(rarity)
    --roll for Domain first
    local rollDomain = applyItemDetails.MTG.rollDomain(rarity)
    if rollDomain then
        if rarity == "Rare" then
            -- The only Domains on the rare sheets were five copies of Island.
            return ("MTG Alpha Blue Domain "..ZombRand(3)+1)
        else
            return ("MTG Alpha "..MTG.alphaDomain[ZombRand(#MTG.alphaDomain)+1])
        end
    end

    local cardPool = MTG["alpha"..rarity]
    return ("MTG Alpha "..cardPool[ZombRand(#cardPool)+1])
end



function applyItemDetails.MTG.unpackBooster(cards)
    -- 11 common, 3 uncommon, 1 rare -- 15

    for i=1, 11 do
        local card = applyItemDetails.MTG.rollCard("Common")
        table.insert(cards, card)
    end

    for i=1, 3 do
        local card = applyItemDetails.MTG.rollCard("Uncommon")
        table.insert(cards, card)
    end

    for i=1, 1 do
        local card = applyItemDetails.MTG.rollCard("Rare")
        table.insert(cards, card)
    end

    return cards
end


function applyItemDetails.applyBoostersToMTGCards(item, n)
    item:getModData()["gameNight_cardAltNames"] = nil
    local cards = {}
    n = n or 1
    for i=1, n do applyItemDetails.MTG.unpackBooster(cards) end
    item:getModData()["gameNight_cardDeck"] = cards
    item:getModData()["gameNight_cardFlipped"] = {}
    for i=1, #cards do item:getModData()["gameNight_cardFlipped"][i] = true end
end


function applyItemDetails.applyCardForMTG(item)
    local applyBoosters = item:getModData()["gameNight_specialOnCardApplyBoosters"]
    --- recipe sets this modData to the resulting item, 1 booster = 15 cards, 4 = 60.
    if applyBoosters then
        item:getModData()["gameNight_specialOnCardApplyBoosters"] = nil
        applyItemDetails.applyBoostersToMTGCards(item, applyBoosters)
        return
    end

    item:getModData()["gameNight_cardAltNames"] = nil
    if not item:getModData()["gameNight_cardDeck"] then
        local cards = MTG.buildDeck()
        item:getModData()["gameNight_cardDeck"] = cards
        item:getModData()["gameNight_cardFlipped"] = {}
        for i=1, #cards do item:getModData()["gameNight_cardFlipped"][i] = true end
    end
end


gamePieceAndBoardHandler.registerSpecial("Base.mtgCards", { shiftAction = {"channelCard"}, actions = { channelCard=true, examineCard=true}, examineScale = 0.75, applyCards = "applyCardForMTG", textureSize = {100,140} })


function deckActionHandler.channelCard_isValid(deckItem, player) if deckItem and deckItem:getWorldItem() then return true end end
function deckActionHandler.channelCard(deckItem, player)
    local current = deckItem:getModData()["gameNight_rotation"] or 0
    local state = current == 90 and 0 or 90

    gamePieceAndBoardHandler.playSound(deckItem, player)
    gamePieceAndBoardHandler.pickupAndPlaceGamePiece(player, deckItem, {gamePieceAndBoardHandler.setModDataValue, deckItem, "gameNight_rotation", state})
end


MTG.deckArchetypesList = {
    --- 5 mono decks
    White = {"White"},
    Black = {"Black"},
    Green = {"Green"},
    Blue = {"Blue"},
    Red = {"Red"},

    --- 10 duo decks
    Azorius = {"White", "Blue"},
    Dimir = {"Blue", "Black"},
    Rakdos = {"Black", "Red"},
    Gruul = {"Red", "Green"},
    Selesnya = {"White", "Green"},
    Orzhov = {"White", "Black"},
    Izzet = {"Blue", "Red"},
    Golgari = {"Black", "Green"},
    Boros = {"Red", "White"},
    Simic = {"Blue", "Green"},

    --- 10 trio decks
    Bant = {"White", "Blue", "Green"},
    Esper = {"White", "Blue", "Black"},
    Grixis = {"Blue", "Black", "Red"},
    Jund = {"Black", "Red", "Green"},
    Naya = {"White", "Red", "Green"},
    Abzan = {"White", "Black", "Green"},
    Jeskai = {"White", "Blue", "Red"},
    Sultai = {"Blue", "Black", "Green"},
    Mardu = {"White", "Black", "Red"},
    Temur = {"Blue", "Red", "Green"}

}

function MTG.buildDeck(archetype)

    local cards = {}

    archetype = archetype or applyItemDetails.MTG.weighedProbability(
            {White=4, Black=4, Green=4, Blue=4, Red=4,
             Azorius=8, Dimir=8, Rakdos=8, Gruul=8, Selesnya=8, Orzhov=8, Izzet=8, Golgari=8, Boros=8, Simic=8,
             Bant = 1, Esper = 1, Grixis = 1, Jund = 1, Naya = 1, Abzan = 1, Jeskai = 1, Sultai = 1, Mardu = 1, Temur = 1
            })

    local deckSize = ZombRand(55,66)

    local colors = MTG.deckArchetypesList[archetype]

    --[[DEBUG]] local colorString = ""
    for i,c in ipairs(colors) do colorString = colorString..c..((#colors>1 and i~=#colors) and "/" or "") end
    --[[DEBUG]] local rarities = {Common=0, Uncommon = 0, Rare =0}
    --avg goal of 6 Relics
    --11 instead of 10 skews the average lower
    local artifactGoal = math.floor(deckSize/11)+ZombRand(3) -- 0 to 2 additional
    for i=1, artifactGoal do
        local rarity = applyItemDetails.MTG.weighedProbability({ Uncommon = 3, Rare = 1})
        --[[DEBUG]] rarities[rarity] = rarities[rarity]+1
        local card = applyItemDetails.MTG.rollCardOfParticularColor(rarity, "Relics")
        table.insert(cards, card)
    end

    --avg goal of 24 Domain
    local DomainGoal = math.floor(deckSize/2.5)+ZombRand(4) --0 to 3
    for i=1, DomainGoal do
        local color = colors[ZombRand(#colors)+1]
        local card = applyItemDetails.MTG.rollCardOfParticularColor("Domain", color.." Domain")
        table.insert(cards, card)
    end

    local remainingCount = deckSize - #cards
    for i=1, remainingCount do
        local color = colors[ZombRand(#colors)+1]
        local rarity = applyItemDetails.MTG.weighedProbability({ Common = 11, Uncommon = 3, Rare = 1})
        --[[DEBUG]] rarities[rarity] = rarities[rarity]+1
        local card = applyItemDetails.MTG.rollCardOfParticularColor(rarity, color)
        table.insert(cards, card)
    end

    if getDebug() then
        print("DECK BUILT: ", " c:"..#cards, " +a:"..artifactGoal, " +l:"..DomainGoal, " +o:"..remainingCount,
                "=("..remainingCount+DomainGoal+artifactGoal..")",
                " (r:"..rarities.Rare," u:"..rarities.Uncommon," c:"..rarities.Common..")",
                "  ["..colorString.."]")
    end

    return cards
end