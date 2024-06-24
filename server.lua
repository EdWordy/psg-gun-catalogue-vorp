-- Initialize VORP API
local VORP = exports.vorp_core:vorpAPI()
local VORP_Banking = exports.vorp_banking:vorpBankingAPI()

local weapons = {
    [1] = { ['weapon'] = 'WEAPON_REVOLVER_CATTLEMAN', ["PRICE"] = 10, ['label'] = 'Cattleman Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 1},
    [2] = { ['weapon'] = 'WEAPON_REVOLVER_DOUBLEACTION', ["PRICE"] = 20, ['label'] = 'Double-Action Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 1},
    [3] = { ['weapon'] = 'WEAPON_REVOLVER_LEMAT', ["PRICE"] = 55, ['label'] = 'LeMat Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 1},
    [4] = { ['weapon'] = 'WEAPON_REVOLVER_SCHOFIELD', ["PRICE"] = 30, ['label'] = 'Schofield Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 1},
    [5] = { ['weapon'] = 'WEAPON_PISTOL_VOLCANIC', ["PRICE"] = 35, ['label'] = 'Volcanic Pistol', ['AMMOlabel'] = 'pistol ammo', ["AMMOPRICE"] = 1},
    [6] = { ['weapon'] = 'WEAPON_PISTOL_SEMIAUTO', ["PRICE"] = 120, ['label'] = 'Semi-Auto Pistol', ['AMMOlabel'] = 'pistol ammo', ["AMMOPRICE"] = 1},
    [7] = { ['weapon'] = 'WEAPON_PISTOL_MAUSER', ["PRICE"] = 100, ['label'] = 'Mauser Pistol', ['AMMOlabel'] = 'pistol ammo', ["AMMOPRICE"] = 1},
    
    [8] = { ['weapon'] = 'WEAPON_REPEATER_CARBINE', ["PRICE"] = 45, ['label'] = 'Carbine Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 1},
    [9] = { ['weapon'] = 'WEAPON_REPEATER_WINCHESTER', ["PRICE"] = 120, ['label'] = 'Lancaster Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 2}, 
    [10] = { ['weapon'] = 'WEAPON_REPEATER_EVANS', ["PRICE"] = 170, ['label'] = 'Evans Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 2},
    
    [11] = { ['weapon'] = 'WEAPON_RIFLE_VARMINT', ["PRICE"] = 35, ['label'] = 'Varmint Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 1},
    
    [12] = { ['weapon'] = 'WEAPON_RIFLE_SPRINGFIELD', ["PRICE"] = 265, ['label'] = 'Springfield Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 2},
    [13] = { ['weapon'] = 'WEAPON_RIFLE_BOLTACTION', ["PRICE"] = 275, ['label'] = 'Bolt-Action Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 2},
    [14] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_ROLLINGBLOCK', ["PRICE"] = 290, ['label'] = 'Rolling Block Rifle', ['AMMOlabel'] = 'sniper ammo', ["AMMOPRICE"] = 2},
    [15] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_CARCANO', ["PRICE"] = 310, ['label'] = 'Carcano Rifle', ['AMMOlabel'] = 'sniper ammo', ["AMMOPRICE"] = 2},
    
    [16] = { ['weapon'] = 'WEAPON_SHOTGUN_SAWEDOFF', ["PRICE"] = 140, ['label'] = 'Sawed-Off Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 2},
    [17] = { ['weapon'] = 'WEAPON_SHOTGUN_DOUBLEBARREL', ["PRICE"] = 65, ['label'] = 'Double-Barrel Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 2},
    [18] = { ['weapon'] = 'WEAPON_SHOTGUN_PUMP', ["PRICE"] = 80, ['label'] = 'Pump-Action Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 2},
    [19] = { ['weapon'] = 'WEAPON_SHOTGUN_REPEATING', ["PRICE"] = 170, ['label'] = 'Repeating Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 2},
    [20] = { ['weapon'] = 'WEAPON_SHOTGUN_SEMIAUTO', ["PRICE"] = 180, ['label'] = 'Semi-Auto Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 2},
    
    [21] = { ['weapon'] = 'WEAPON_BOW', ["PRICE"] = 35, ['label'] = 'Bow', ['AMMOlabel'] = 'arrow', ["AMMOPRICE"] = 1},
    [22] = { ['weapon'] = 'WEAPON_LASSO', ["PRICE"] = 10, ['label'] = 'Lasso', ['AMMOlabel'] = 'none', ["AMMOPRICE"] = 0},
    [23] = { ['weapon'] = 'WEAPON_MELEE_BROKEN_SWORD', ["PRICE"] = 5, ['label'] = 'Broken Sword', ['AMMOlabel'] = 'none', ["AMMOPRICE"] = 0},   
    [24] = { ['weapon'] = 'WEAPON_MELEE_LANTERN', ["PRICE"] = 8, ['label'] = 'Lantern', ['AMMOlabel'] = 'none', ["AMMOPRICE"] = 0},
    [25] = { ['weapon'] = 'WEAPON_MELEE_HATCHET', ["PRICE"] = 10, ['label'] = 'Hatchet', ['AMMOlabel'] = 'none', ["AMMOPRICE"] = 0},
    [26] = { ['weapon'] = 'WEAPON_MELEE_KNIFE', ["PRICE"] = 7, ['label'] = 'Knife', ['AMMOlabel'] = 'none', ["AMMOPRICE"] = 0},
    [27] = { ['weapon'] = 'WEAPON_THROWN_THROWING_KNIVES', ["PRICE"] = 15, ['label'] = 'Throwing Knives', ['AMMOlabel'] = 'throwing knives', ["AMMOPRICE"] = 5},
    [28] = { ['weapon'] = 'WEAPON_MELEE_MACHETE', ["PRICE"] = 12, ['label'] = 'Machete', ['AMMOlabel'] = 'none', ["AMMOPRICE"] = 0},
    [29] = { ['weapon'] = 'WEAPON_THROWN_TOMAHAWK', ["PRICE"] = 20, ['label'] = 'Tomahawk', ['AMMOlabel'] = 'tomahawk', ["AMMOPRICE"] = 5},
    [30] = { ['weapon'] = 'WEAPON_THROWN_DYNAMITE', ["PRICE"] = 30, ['label'] = 'Dynamite', ['AMMOlabel'] = 'dynamite', ["AMMOPRICE"] = 10},
    [31] = { ['weapon'] = 'WEAPON_THROWN_MOLOTOV', ["PRICE"] = 25, ['label'] = 'Molotov', ['AMMOlabel'] = 'molotov', ["AMMOPRICE"] = 8},
}

local securecode = math.random(111111,9999999)

RegisterNetEvent('gunCatalogue:Purchase')
AddEventHandler('gunCatalogue:Purchase', function(data, code)
    local _source = source
    local User = VORP.getUser(_source)
    
    if User then
        local Character = User.getUsedCharacter
        local userMoney = VORP_Banking.getBalance(_source) -- Get balance from banking

        if code == securecode then
            for k, v in pairs(weapons) do
                if v.weapon == data.weapon then
                    if userMoney >= v.PRICE then
                        VORP_Banking.removeMoney(_source, v.PRICE) -- Remove money using banking
                        exports.vorp_inventory:addItem(_source, v.weapon, 1)
                        VORP.TipRight(_source, "You have purchased a " .. v.label, 4000)
                    else
                        VORP.NotifyRight(_source, "You do not have enough money", "Purchase Failed", "DANGER")
                    end
                    break
                elseif v.AMMOlabel == data.weapon then
                    if userMoney >= v.AMMOPRICE then
                        VORP_Banking.removeMoney(_source, v.AMMOPRICE) -- Remove money using banking
                        TriggerClientEvent('gunCatalogue:giveammo', _source, v.weapon, securecode)
                        exports.vorp_inventory:addItem(_source, v.AMMOlabel, 1)
                        VORP.TipRight(_source, "You have purchased " .. v.AMMOlabel, 4000)
                    else
                        VORP.NotifyRight(_source, "You do not have enough money", "Purchase Failed", "DANGER")
                    end
                    break
                end
            end
        else
            VORP.NotifyRight(_source, "Invalid code", "Purchase Failed", "DANGER")
        end
    else
        print("VORP.getUser returned nil for source: " .. tostring(_source))
    end
end)

RegisterServerEvent('gunCatalogue:getCode')
AddEventHandler('gunCatalogue:getCode', function()
    local _source = source
    TriggerClientEvent('gunCatalogue:SendCode', _source, securecode)
end)

local function registerUsableItem(itemName, weaponName)
    exports.vorp_inventory:registerUsableItem(itemName, function(data)
        local _source = data.source
        TriggerClientEvent('gunCatalogue:giveammo', _source, weaponName, securecode)
        exports.vorp_inventory:subItem(_source, itemName, 1)
    end)
end

registerUsableItem("ammorevolvernormal", "WEAPON_REVOLVER_CATTLEMAN")
registerUsableItem("ammopistolnormal", "WEAPON_PISTOL_MAUSER")
registerUsableItem("ammovarmint", "WEAPON_RIFLE_VARMINT")
registerUsableItem("ammoriflenormal", "WEAPON_RIFLE_BOLTACTION")
registerUsableItem("ammoshotgunnormal", "WEAPON_SHOTGUN_DOUBLEBARREL")
registerUsableItem("ammorepeaternormal", "WEAPON_REPEATER_EVANS")
registerUsableItem("ammoriflenormal", "WEAPON_SNIPERRIFLE_CARCANO")
registerUsableItem("ammoarrownormal", "WEAPON_BOW")

-- Print contents of `tbl`, with indentation.
-- `indent` sets the initial level of indentation.
function tprint (tbl, indent)
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
        formatting = string.rep("  ", indent) .. k .. ": "
        if type(v) == "table" then
            print(formatting)
            tprint(v, indent+1)
        elseif type(v) == 'boolean' then
            print(formatting .. tostring(v))
        else
            print(formatting .. v)
        end
    end
end