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
            for k, v in pairs(Config.weapons) do
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