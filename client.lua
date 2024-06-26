local isOpen = false
local doOpen = false
local doClose = true
local active = false
local prop = {}
local code = nil
local store

local gunstores = {
    -- Annesburg
    [1] = {x = 2947.246, y = 1319.698, z = 44.88, h = 72.38},
    -- Saint Denis
    [2] = {x = 2716.972, y = -1286.010, z = 49.686, h = 40.09},
    -- Valentine
    [3] = {x = -281.255, y = 780.033, z = 119.553, h = 5.86}, 
    -- Rhodes
    [4] = {x = 1323.141, y = -1322.304, z = 77.939, h = 343.25},   
    -- Tumbleweed
    [5] = {x = -5507.428, y = -2964.109, z = -0.578, h = 115.78},
}

local catalogue = {
    [1] = {x = 2947.246, y = 1319.698, z = 44.88, h = 72.38},
    [2] = {x = 2716.972, y = -1286.010, z = 49.686, h = 40.09},
    [3] = {x = -281.255, y = 780.033, z = 119.553, h = 5.86}, 
    [4] = {x = 1323.141, y = -1322.304, z = 77.939, h = 343.25},   
    [5] = {x = -5507.428, y = -2964.109, z = -0.578, h = 115.78},     
}

RegisterNetEvent('gunCatalogue:sendCode')
AddEventHandler('gunCatalogue:sendCode', function(code1)
    code = code1
end)

Citizen.CreateThread(function()
    StorePrompt()
    while true do
        local sleep = 7
        local ped = PlayerPedId()
        local pedcoords = GetEntityCoords(ped)
        for i = 1, #gunstores do
        local distance = #(vector3(gunstores[i].x, gunstores[i].y, gunstores[i].z)-vector3(pedcoords["x"], pedcoords["y"], pedcoords["z"]))
            if distance < 100 then
                if distance < 2 then
                    sleep = 5
                    if PromptIsValid(store) and not active then
                        PromptSetVisible(store, true)
                        PromptSetEnabled(store, true)
                    end                   
                    if PromptHasHoldModeCompleted(store) then
                        PromptSetEnabled(store, false)
                        PromptSetVisible(store, false)
                        active = true
                        OpenUI()
                        FreezeEntityPosition(PlayerPedId(), true)
                    end
                else
                        if PromptIsValid(store) then
                            sleep = 50
                            PromptSetEnabled(store, false)
                            PromptSetVisible(store, false)
                        end                 
                    sleep = 1200
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        PromptSetEnabled(store, false)
        PromptSetVisible(store, false)
        FreezeEntityPosition(PlayerPedId(), false)
    end
end)

function StorePrompt()
    Citizen.CreateThread(function()
        store = PromptRegisterBegin()
        PromptSetControlAction(store, 0x5E723D8C)
        PromptSetText(store, CreateVarString(10, "LITERAL_STRING", "Browse the gun store"))
        PromptSetEnabled(store, 1)
        PromptSetVisible(store, 1)
        PromptSetHoldMode(store, 1)
        PromptRegisterEnd(store)
        PromptSetGroup(store, 0, 1)       
    end)
end

Citizen.CreateThread(function () 
    local book = GetHashKey("mp001_s_mp_catalogue01x")
    local pcoords = GetEntityCoords(PlayerPedId())
    RequestModel(book)
    while not HasModelLoaded(book) do
        Citizen.Wait(0)
    end
    
    for i=1,#catalogue do
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, catalogue[i].x, catalogue[i].y, catalogue[i].z)
        SetBlipSprite(blip, -145868367, 1)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, "Gun Store")
    end

    for i=1,#catalogue do
        prop[i] = CreateObjectNoOffset(book, catalogue[i].x, catalogue[i].y, catalogue[i].z, false, false, false, false)
        SetEntityHeading(prop[i], catalogue[i].h)
        FreezeEntityPosition(prop[i], true)
    end
end)

function startup()
    isOpen = false
    SetNuiFocus(isOpen,isOpen)
    SendNUIMessage({
        type = "OpenBookGui",
        value = false
    })
end

function OpenUI()
    isOpen = true
    SetNuiFocus(isOpen,isOpen)
    SendNUIMessage({
        type = "OpenBookGui",
        value = true,
    })
end

function CloseUI()
    isOpen = false
    SetNuiFocus(isOpen, isOpen)
    active = false
    FreezeEntityPosition(PlayerPedId(), false)
    SendNUIMessage({
        type = "OpenBookGui",
        value = false,
    })
end

Citizen.CreateThread(function(...)
    while true do
        Citizen.Wait(5)

        if doOpen then
            doOpen = false
            OpenUI()
        elseif doClose then
            doClose = false
            CloseUI()
        end
    end
end)

RegisterNetEvent('gunCatalogue:giveAmmo')
AddEventHandler('gunCatalogue:giveAmmo', function(type, code1)
    TriggerServerEvent('gunCatalogue:getCode')
    Wait(200)
    if code == code1 then
        local ammotype = GetPedAmmoTypeFromWeapon(PlayerPedId(), type)
        local ammo = GetPedAmmoByType(PlayerPedId(), ammotype) 
        local ammo = ammo + 10
        SetPedAmmo(PlayerPedId(), GetHashKey(type), ammo)
    end
end)

function Purchase(data)
    TriggerServerEvent('gunCatalogue:getCode')
    Wait(200)
    TriggerServerEvent('gunCatalogue:Purchase', data, code)
end

RegisterCommand('closeui', function(...) doClose = true; end)
RegisterNUICallback('purchaseweapon', Purchase)
RegisterNUICallback('close', CloseUI)

RegisterNUICallback('playSoundPageLeft', function()
    PlaySoundFrontend("NAV_LEFT", "Ledger_Sounds", true, 0)
    end)
    
RegisterNUICallback('playSoundPageRight', function()
    PlaySoundFrontend("NAV_RIGHT", "Ledger_Sounds", true, 0)
end)

RegisterNetEvent('gunCatalogue:playSoundPurchase')
AddEventHandler('gunCatalogue:playSoundPurchase', function()
    PlaySoundFrontend("PURCHASE", "Ledger_Sounds", true, 0)
end)
