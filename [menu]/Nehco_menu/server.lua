ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)





RegisterNetEvent('powx_tuto:Buytel')

AddEventHandler('powx_tuto:Buytel', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 350

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('tel', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)



RegisterNetEvent('powx_tuto:Buyradio')

AddEventHandler('powx_tuto:Buyradio', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 500

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('radio', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)






RegisterNetEvent('powx_tuto:Buysim')

AddEventHandler('powx_tuto:Buysim', function()



    local _source = source

    local xPlayer = ESX.GetPlayerFromId(source)

    local price = 50

    local xMoney = xPlayer.getMoney()



    if xMoney >= price then



        xPlayer.removeMoney(price)

        xPlayer.addInventoryItem('sim', 1)

        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")

    else

         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")

    end

end)