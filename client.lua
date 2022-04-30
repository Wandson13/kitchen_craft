local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vSERVER = Tunnel.getInterface(GetCurrentResourceName())
config = module(GetCurrentResourceName(),"config")

Citizen.CreateThread(function()
    while true do
        local sleep = 1000
        -- print(json.encode(config))
        for k,v in pairs(config.locals) do
            local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),v.cds[1],v.cds[2],v.cds[3],true)
            if distance < 5 then
                sleep = 1
                DrawMarker(21,v.cds[1],v.cds[2],v.cds[3]-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,0,0,255,50,0,0,0,1)
                drawText3ds(v.cds[1],v.cds[2],v.cds[3],v.text)
            end
        end
        Citizen.Wait(sleep)
    end
end)

RegisterKeyMapping('kitchen_craft:open','Abrir Interface da cozinha','keyboard','E')

RegisterCommand("kitchen_craft:open", function()
    for k,v in pairs(config.locals) do
        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),v.cds[1],v.cds[2],v.cds[3],true)
        if distance < 1 then
            if v.perm.enabled then
                if vSERVER.checkPerm(v.perm.perm) then
                    print(v.recipes)
                    SendNUIMessage({ action = "open", name = k, recipes = v.recipes, recipes_config = config.recipes })
                    SetNuiFocus(true, true)
                end
            else
                SetNuiFocus(true, true)
                SendNUIMessage({ action = "open", name = k, recipes = v.recipes, recipes_config = config.recipes })
            end
           
        end
    end
end)

RegisterNUICallback("close", function(data,cb)
    SetNuiFocus(false, false)
end)

RegisterNUICallback("select_recipe", function(data,cb)
    SetNuiFocus(false, false)
    vSERVER.select_recipe(data.recipe)
end)

RegisterNetEvent("anim")
AddEventHandler("anim", function()
	TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)            
	SetTimeout(10000,function()
	ClearPedTasksImmediately(PlayerPedId())
	end)
end)


function drawText3ds(x,y,z,text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    SetTextScale(0.34, 0.34)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370 +0.02
    DrawRect(_x,_y+0.0125, 0.001+ factor, 0.028, 0, 0, 0, 78)
end