local weapons = {
    [1] = { ['weapon'] = 'WEAPON_REVOLVER_CATTLEMAN', ["PRICE"] = 10, ['label'] = 'Cattleman Revolver', ['AMMOlabel'] = 'ammorevolvernormal', ["AMMOPRICE"] = 1},
    [2] = { ['weapon'] = 'WEAPON_REVOLVER_DOUBLEACTION', ["PRICE"] = 20, ['label'] = 'Double-Action Revolver', ['AMMOlabel'] = 'ammorevolvernormal', ["AMMOPRICE"] = 1},
    [3] = { ['weapon'] = 'WEAPON_REVOLVER_LEMAT', ["PRICE"] = 55, ['label'] = 'LeMat Revolver', ['AMMOlabel'] = 'ammorevolvernormal', ["AMMOPRICE"] = 1},
    [4] = { ['weapon'] = 'WEAPON_REVOLVER_SCHOFIELD', ["PRICE"] = 30, ['label'] = 'Schofield Revolver', ['AMMOlabel'] = 'ammorevolvernormal', ["AMMOPRICE"] = 1},
    [5] = { ['weapon'] = 'WEAPON_PISTOL_VOLCANIC', ["PRICE"] = 35, ['label'] = 'Volcanic Pistol', ['AMMOlabel'] = 'ammopistolnormal', ["AMMOPRICE"] = 1},
    [6] = { ['weapon'] = 'WEAPON_PISTOL_SEMIAUTO', ["PRICE"] = 120, ['label'] = 'Semi-Auto Pistol', ['AMMOlabel'] = 'ammopistolnormal', ["AMMOPRICE"] = 1},
    [7] = { ['weapon'] = 'WEAPON_PISTOL_MAUSER', ["PRICE"] = 100, ['label'] = 'Mauser Pistol', ['AMMOlabel'] = 'ammopistolnormal', ["AMMOPRICE"] = 1},
    
    [8] = { ['weapon'] = 'WEAPON_REPEATER_CARBINE', ["PRICE"] = 45, ['label'] = 'Carbine Repeater', ['AMMOlabel'] = 'ammorepeaternormal', ["AMMOPRICE"] = 1},
    [9] = { ['weapon'] = 'WEAPON_REPEATER_WINCHESTER', ["PRICE"] = 120, ['label'] = 'Lancaster Repeater', ['AMMOlabel'] = 'ammorepeaternormal', ["AMMOPRICE"] = 2}, 
    [10] = { ['weapon'] = 'WEAPON_REPEATER_EVANS', ["PRICE"] = 170, ['label'] = 'Evans Repeater', ['AMMOlabel'] = 'ammorepeaternormal', ["AMMOPRICE"] = 2},
    
    [11] = { ['weapon'] = 'WEAPON_RIFLE_VARMINT', ["PRICE"] = 35, ['label'] = 'Varmint Rifle', ['AMMOlabel'] = 'ammovarmint', ["AMMOPRICE"] = 1,},
    
    [12] = { ['weapon'] = 'WEAPON_RIFLE_SPRINGFIELD', ["PRICE"] = 265, ['label'] = 'Springfield Rifle', ['AMMOlabel'] = 'ammoriflenormal', ["AMMOPRICE"] = 2},
    [13] = { ['weapon'] = 'WEAPON_RIFLE_BOLTACTION', ["PRICE"] = 275, ['label'] = 'Bolt-Action Rifle', ['AMMOlabel'] = 'ammoriflenormal', ["AMMOPRICE"] = 2},
    [14] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_ROLLINGBLOCK', ["PRICE"] = 290, ['label'] = 'Rolling Block Rifle', ['AMMOlabel'] = 'ammoriflenormal', ["AMMOPRICE"] = 2},
    [15] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_CARCANO', ["PRICE"] = 310, ['label'] = 'Carcano Rifle', ['AMMOlabel'] = 'ammoriflenormal', ["AMMOPRICE"] = 2},
    
    [16] = { ['weapon'] = 'WEAPON_SHOTGUN_SAWEDOFF', ["PRICE"] = 140, ['label'] = 'Sawed-Off Shotgun', ['AMMOlabel'] = 'ammoshotgunnormal', ["AMMOPRICE"] = 2},
    [17] = { ['weapon'] = 'WEAPON_SHOTGUN_DOUBLEBARREL', ["PRICE"] = 65, ['label'] = 'Double-Barrel Shotgun', ['AMMOlabel'] = 'ammoshotgunnormal', ["AMMOPRICE"] = 2},
    [18] = { ['weapon'] = 'WEAPON_SHOTGUN_PUMP', ["PRICE"] = 80, ['label'] = 'Pump-Action Shotgun', ['AMMOlabel'] = 'ammoshotgunnormal', ["AMMOPRICE"] = 2},
    [19] = { ['weapon'] = 'WEAPON_SHOTGUN_REPEATING', ["PRICE"] = 170, ['label'] = 'Repeating Shotgun', ['AMMOlabel'] = 'ammoshotgunnormal', ["AMMOPRICE"] = 2},
    [20] = { ['weapon'] = 'WEAPON_SHOTGUN_SEMIAUTO', ["PRICE"] = 180, ['label'] = 'Semi-Auto Shotgun', ['AMMOlabel'] = 'ammoshotgunnormal', ["AMMOPRICE"] = 2},
    
    [21] = { ['weapon'] = 'WEAPON_BOW', ["PRICE"] = 35, ['label'] = 'Bow', ['AMMOlabel'] = 'arrow', ["AMMOPRICE"] = 1, ["AMMOCOUNT"] = 20 },
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

-- Initialize VORP API
local Core = exports.vorp_core:GetCore()

RegisterNetEvent('gunCatalogue:Purchase')
AddEventHandler('gunCatalogue:Purchase', function(data, code)

    local User = Core.getUser(source)

    if User then
        local Character = User.getUsedCharacter

        if code == securecode then  
            for k, v in pairs(weapons) do
                print (Character.money)
                local money = Character.money
                if data.isammo == 0 then
                    if money >= v.PRICE then

                        local canCarry = exports.vorp_inventory:canCarryWeapons(source, 1, nil, v.weapon)
                        if not canCarry then
                            Core.NotifyRightTip(source, "Can't carry any more weapons!", 3000)
                            return
                        end

                        Character.removeCurrency(0, v.PRICE)
                        local ammo = { ["nothing"] = 0 }
                        local components = { ["nothing"] = 0 }  
                        exports.vorp_inventory:createWeapon(source, v.weapon, ammo, components)
                        Core.NotifyRightTip(source, "You have purchased a " .. v.label, 4000)
                        PlaySoundFrontend("PURCHASE", "Ledger_Sounds", true, 0)

                    else
                        Core.NotifyRight(source, "You do not have enough money", "Purchase Failed", "DANGER")
                    end
                    break
                elseif data.isammo == 1 then
                    if money >= v.AMMOPRICE then

                        local canCarry = exports.vorp_inventory:canCarryItem(source, v.AMMOlabel, 1)
                        if not canCarry then
                            return Core.NotifyRightTip(source, "Can't carry any more items!", 3000)
                        end
                        
                        Character.removeCurrency(0, v.AMMOPRICE)
                        TriggerClientEvent('gunCatalogue:giveammo', User, v.weapon, securecode)
                        exports.vorp_inventory:addItem(source, v.AMMOlabel, 1)
                        Core.NotifyRightTip(User, "You have purchased " .. v.AMMOlabel, 4000)
                        PlaySoundFrontend("PURCHASE", "Ledger_Sounds", true, 0)
                    else
                        Core.NotifyRight(source, "You do not have enough money", "Purchase Failed", "DANGER")
                    end
                    break
                end
            end
        else
            Core.NotifyRight(User, "Invalid code", "Purchase Failed", "DANGER")
        end
    else
        print("VORP.getUser returned nil for source: " .. tostring(User))
    end
end)

RegisterServerEvent('gunCatalogue:getCode')
AddEventHandler('gunCatalogue:getCode', function()
    local _source = source
    TriggerClientEvent('gunCatalogue:SendCode', _source, securecode)
end)

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