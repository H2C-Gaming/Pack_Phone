ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    ESX.RegisterServerCallback('radio:has', function(id, cb)
        local xPlayer = ESX.GetPlayerFromId(id)
        if xPlayer.getInventoryItem('radio').count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end)

    RegisterNetEvent('radio:darRadioWH')
    AddEventHandler('radio:darRadioWH', function()
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)

        if xPlayer.canCarryItem('radio', 1) and xPlayer.getInventoryItem('radio').count == 0 then
            xPlayer.addInventoryItem('radio', 1)
        elseif xPlayer.getInventoryItem('radio').count >= 1 then
            TriggerClientEvent('esx:showNotification', _source, 'Vous avez déjà une radio.')
        end
    end)
end)