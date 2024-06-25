local weapons = {
    [1] = { ['weapon'] = 'WEAPON_REVOLVER_CATTLEMAN', ["price"] = 10, ['label'] = 'Cattleman Revolver', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Revolver Ammo', ["ammoprice"] = 1},
    [2] = { ['weapon'] = 'WEAPON_REVOLVER_DOUBLEACTION', ["price"] = 20, ['label'] = 'Double-Action Revolver', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Revolver Ammo', ["ammoprice"] = 1},
    [3] = { ['weapon'] = 'WEAPON_REVOLVER_LEMAT', ["price"] = 55, ['label'] = 'LeMat Revolver', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Revolver Ammo', ["ammoprice"] = 1},
    [4] = { ['weapon'] = 'WEAPON_REVOLVER_SCHOFIELD', ["price"] = 30, ['label'] = 'Schofield Revolver', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Revolver Ammo', ["ammoprice"] = 1},
    [5] = { ['weapon'] = 'WEAPON_PISTOL_VOLCANIC', ["price"] = 35, ['label'] = 'Volcanic Pistol', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Pistol Ammo', ["ammoprice"] = 1},
    [6] = { ['weapon'] = 'WEAPON_PISTOL_SEMIAUTO', ["price"] = 120, ['label'] = 'Semi-Auto Pistol', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Pistol Ammo', ["ammoprice"] = 1},
    [7] = { ['weapon'] = 'WEAPON_PISTOL_MAUSER', ["price"] = 100, ['label'] = 'Mauser Pistol', ['ammo'] = 'ammorevolvernormal', ['ammolabel'] = 'Pistol Ammo', ["ammoprice"] = 1},
    
    [8] = { ['weapon'] = 'WEAPON_REPEATER_CARBINE', ["price"] = 45, ['label'] = 'Carbine Repeater', ['ammo'] = 'ammorepeaternormal', ['ammolabel'] = 'Repeater Ammo', ["ammoprice"] = 2},
    [9] = { ['weapon'] = 'WEAPON_REPEATER_LANCASTER', ["price"] = 120, ['label'] = 'Lancaster Repeater', ['ammo'] = 'ammorepeaternormal', ['ammolabel'] = 'Repeater Ammo', ["ammoprice"] = 2}, 
    [10] = { ['weapon'] = 'WEAPON_REPEATER_EVANS', ["price"] = 170, ['label'] = 'Evans Repeater', ['ammo'] = 'ammorepeaternormal', ['ammolabel'] = 'Repeater Ammo', ["ammoprice"] = 2},
    
    [11] = { ['weapon'] = 'WEAPON_RIFLE_VARMINT', ["price"] = 35, ['label'] = 'Varmint Rifle', ['ammo'] = 'ammovarmint', ['ammolabel'] = 'Varmint Ammo', ["ammoprice"] = 1,},
    
    [12] = { ['weapon'] = 'WEAPON_RIFLE_SPRINGFIELD', ["price"] = 265, ['label'] = 'Springfield Rifle', ['ammo'] = 'ammoriflenormal', ['ammolabel'] = 'Rifle Ammo', ["ammoprice"] = 2},
    [13] = { ['weapon'] = 'WEAPON_RIFLE_BOLTACTION', ["price"] = 275, ['label'] = 'Bolt-Action Rifle', ['ammo'] = 'ammoriflenormal', ['ammolabel'] = 'Rifle Ammo', ["ammoprice"] = 2},
    [14] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_ROLLINGBLOCK', ["price"] = 290, ['label'] = 'Rolling Block Rifle', ['ammo'] = 'ammoriflenormal', ['ammolabel'] = 'Rifle Ammo', ["ammoprice"] = 2},
    [15] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_CARCANO', ["price"] = 310, ['label'] = 'Carcano Rifle', ['ammo'] = 'ammoriflenormal', ['ammolabel'] = 'Rifle Ammo', ["ammoprice"] = 2},
    
    [16] = { ['weapon'] = 'WEAPON_SHOTGUN_SAWEDOFF', ["price"] = 140, ['label'] = 'Sawed-Off Shotgun', ['ammo'] = 'ammoshotgunnormal', ['ammolabel'] = 'Shotgun Ammo', ["ammoprice"] = 2},
    [17] = { ['weapon'] = 'WEAPON_SHOTGUN_DOUBLEBARREL', ["price"] = 65, ['label'] = 'Double-Barrel Shotgun', ['ammo'] = 'ammoshotgunnormal', ['ammolabel'] = 'Shotgun Ammo', ["ammoprice"] = 2},
    [18] = { ['weapon'] = 'WEAPON_SHOTGUN_PUMP', ["price"] = 80, ['label'] = 'Pump-Action Shotgun', ['ammo'] = 'ammoshotgunnormal', ['ammolabel'] = 'Shotgun Ammo', ["ammoprice"] = 2},
    [19] = { ['weapon'] = 'WEAPON_SHOTGUN_REPEATING', ["price"] = 170, ['label'] = 'Repeating Shotgun', ['ammo'] = 'ammoshotgunnormal', ['ammolabel'] = 'Shotgun Ammo', ["ammoprice"] = 2},
    [20] = { ['weapon'] = 'WEAPON_SHOTGUN_SEMIAUTO', ["price"] = 180, ['label'] = 'Semi-Auto Shotgun', ['ammo'] = 'ammoshotgunnormal', ['ammolabel'] = 'Shotgun Ammo', ["ammoprice"] = 2},
    
    [21] = { ['weapon'] = 'WEAPON_BOW', ["price"] = 35, ['label'] = 'Bow', ['ammo'] = 'arrow', ['ammolabel'] = 'Arrow', ["ammoprice"] = 1, ["AMMOCOUNT"] = 20 },
    [22] = { ['weapon'] = 'WEAPON_LASSO', ["price"] = 10, ['label'] = 'Lasso', ['ammo'] = 'none', ['ammolabel'] = 'none', ["ammoprice"] = 0},
    [23] = { ['weapon'] = 'WEAPON_MELEE_BROKEN_SWORD', ["price"] = 5, ['label'] = 'Broken Sword', ['ammo'] = 'none', ['ammolabel'] = 'none', ["ammoprice"] = 0},   
    [24] = { ['weapon'] = 'WEAPON_MELEE_LANTERN', ["price"] = 8, ['label'] = 'Lantern', ['ammo'] = 'none', ['ammolabel'] = 'none', ["ammoprice"] = 0},
    [25] = { ['weapon'] = 'WEAPON_MELEE_HATCHET', ["price"] = 10, ['label'] = 'Hatchet', ['ammo'] = 'none', ['ammolabel'] = 'none', ["ammoprice"] = 0},
    [26] = { ['weapon'] = 'WEAPON_MELEE_KNIFE', ["price"] = 7, ['label'] = 'Knife', ['ammo'] = 'none', ['ammolabel'] = 'none', ["ammoprice"] = 0},
    [27] = { ['weapon'] = 'WEAPON_THROWN_THROWING_KNIVES', ["price"] = 15, ['label'] = 'Throwing Knives', ['ammo'] = 'throwing knives', ['ammolabel'] = 'throwing knives', ["ammoprice"] = 5},
    [28] = { ['weapon'] = 'WEAPON_MELEE_MACHETE', ["price"] = 12, ['label'] = 'Machete', ['ammo'] = 'none', ['ammolabel'] = 'none', ["ammoprice"] = 0},
    [29] = { ['weapon'] = 'WEAPON_THROWN_TOMAHAWK', ["price"] = 20, ['label'] = 'Tomahawk', ['ammo'] = 'tomahawk', ['ammolabel'] = 'tomahawk', ["ammoprice"] = 5},
    [30] = { ['weapon'] = 'WEAPON_THROWN_DYNAMITE', ["price"] = 30, ['label'] = 'Dynamite', ['ammo'] = 'dynamite', ['ammolabel'] = 'dynamite', ["ammoprice"] = 10},
    [31] = { ['weapon'] = 'WEAPON_THROWN_MOLOTOV', ["price"] = 25, ['label'] = 'Molotov', ['ammo'] = 'molotov', ['ammolabel'] = 'molotov', ["ammoprice"] = 8},
}

-- do not touch this
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
            if v.weapon == data.weapon then
                local money = Character.money
                if data.isammo == 0 then
                    if money >= v.price then

                        local canCarry = exports.vorp_inventory:canCarryWeapons(source, 1, nil, v.weapon)
                        if not canCarry then
                            Core.NotifyRightTip(source, "Can't carry any more weapons!", 3000)
                            return
                        end

                        Character.removeCurrency(0, v.price)
                        local ammo = { ["nothing"] = 0 }
                        local components = { ["nothing"] = 0 }  
                        exports.vorp_inventory:createWeapon(source, v.weapon, ammo, components)
                        Core.NotifyRightTip(source, "You have purchased a " .. v.label, 4000)
                    else
                        Core.NotifyRight(source, "You do not have enough money", "Purchase Failed", "DANGER")
                    end
                    break
                elseif data.isammo == 1 then
                    if money >= v.ammoprice then

                        local canCarry = exports.vorp_inventory:canCarryItem(source, v.ammolabel, 1)
                        if not canCarry then
                            return Core.NotifyRightTip(source, "Can't carry any more items!", 3000)
                        end

                        if v.ammo ~= 'none' then
                            Character.removeCurrency(0, v.ammoprice)
                            TriggerClientEvent('gunCatalogue:giveAmmo', User, v.weapon, securecode)
                            exports.vorp_inventory:addItem(source, v.ammo, 1)
                            Core.NotifyRightTip(source, "You have purchased " .. v.ammolabel, 4000)
                        else
                            Core.NotifyRight(source, "This weapon has no ammo", "Purchase Failed", "DANGER")
                        end
                    else
                        Core.NotifyRight(source, "You do not have enough money", "Purchase Failed", "DANGER")
                    end
                    break
                end
            end
            end
        else
            Core.NotifyRight(User, "ERROR: Invalid code", "Purchase Failed", "DANGER")
        end
    else
        print("ERROR: getUser returned nil for source: " .. tostring(source))
    end
end)

RegisterServerEvent('gunCatalogue:getCode')
AddEventHandler('gunCatalogue:getCode', function()
    local _source = source
    TriggerClientEvent('gunCatalogue:sendCode', source, securecode)
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