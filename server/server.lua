local RSGCore = exports['rsg-core']:GetCoreObject()


-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/RetryR1v2/mms-shopsystem/main/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

      
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('Current Version: %s'):format(currentVersion))
            versionCheckPrint('success', ('Latest Version: %s'):format(text))
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

----------------------- CAT1

RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item1Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item1Item) and Player.Functions.GetItemByName(Config.Cat1Item1Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item1Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item1Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item1Price * anzahl)
    local summe = Config.Cat1Item1Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item1Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item1Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)


RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item2Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item2Item) and Player.Functions.GetItemByName(Config.Cat1Item2Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item2Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item2Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item2Price * anzahl)
    local summe = Config.Cat1Item2Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item2Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item2Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item3Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item3Item) and Player.Functions.GetItemByName(Config.Cat1Item3Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item3Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item3Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item3Price * anzahl)
    local summe = Config.Cat1Item3Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item3Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item3Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item4Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item4Item) and Player.Functions.GetItemByName(Config.Cat1Item4Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item4Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item4Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item4Price * anzahl)
    local summe = Config.Cat1Item4Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item4Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item4Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item5Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item5Item) and Player.Functions.GetItemByName(Config.Cat1Item5Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item5Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item5Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item5Price * anzahl)
    local summe = Config.Cat1Item5Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item5Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item5Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item6Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item6Item) and Player.Functions.GetItemByName(Config.Cat1Item6Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item6Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item6Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item6Price * anzahl)
    local summe = Config.Cat1Item6Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item6Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item6Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item7Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item7Item) and Player.Functions.GetItemByName(Config.Cat1Item7Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item7Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item7Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item7Price * anzahl)
    local summe = Config.Cat1Item7Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item7Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item7Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item8Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item8Item) and Player.Functions.GetItemByName(Config.Cat1Item8Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item8Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item8Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item8Price * anzahl)
    local summe = Config.Cat1Item8Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item8Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item8Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item9Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item9Item) and Player.Functions.GetItemByName(Config.Cat1Item9Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item9Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item9Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item9Price * anzahl)
    local summe = Config.Cat1Item9Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item9Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item9Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item10Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item10Item) and Player.Functions.GetItemByName(Config.Cat1Item10Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item10Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item10Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item10Price * anzahl)
    local summe = Config.Cat1Item10Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item10Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item10Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item11Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item11Item) and Player.Functions.GetItemByName(Config.Cat1Item11Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item11Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item11Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item11Price * anzahl)
    local summe = Config.Cat1Item11Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item11Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item11Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat1Item12Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat1Item12Item) and Player.Functions.GetItemByName(Config.Cat1Item12Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat1Item12Item], "remove")
    Player.Functions.RemoveItem(Config.Cat1Item12Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat1Item12Price * anzahl)
    local summe = Config.Cat1Item12Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat1Item12Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat1Item12Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)


----------------------- CAT2

RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item1Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item1Item) and Player.Functions.GetItemByName(Config.Cat2Item1Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item1Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item1Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item1Price * anzahl)
    local summe = Config.Cat2Item1Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item1Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item1Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)


RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item2Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item2Item) and Player.Functions.GetItemByName(Config.Cat2Item2Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item2Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item2Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item2Price * anzahl)
    local summe = Config.Cat2Item2Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item2Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item2Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item3Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item3Item) and Player.Functions.GetItemByName(Config.Cat2Item3Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item3Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item3Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item3Price * anzahl)
    local summe = Config.Cat2Item3Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item3Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item3Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item4Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item4Item) and Player.Functions.GetItemByName(Config.Cat2Item4Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item4Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item4Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item4Price * anzahl)
    local summe = Config.Cat2Item4Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item4Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item4Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item5Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item5Item) and Player.Functions.GetItemByName(Config.Cat2Item5Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item5Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item5Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item5Price * anzahl)
    local summe = Config.Cat2Item5Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item5Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item5Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item6Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item6Item) and Player.Functions.GetItemByName(Config.Cat2Item6Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item6Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item6Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item6Price * anzahl)
    local summe = Config.Cat2Item6Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item6Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item6Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item7Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item7Item) and Player.Functions.GetItemByName(Config.Cat2Item7Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item7Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item7Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item7Price * anzahl)
    local summe = Config.Cat2Item7Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item7Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item7Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item8Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item8Item) and Player.Functions.GetItemByName(Config.Cat2Item8Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item8Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item8Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item8Price * anzahl)
    local summe = Config.Cat2Item8Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item8Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item8Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item9Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item9Item) and Player.Functions.GetItemByName(Config.Cat2Item9Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item9Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item9Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item9Price * anzahl)
    local summe = Config.Cat2Item9Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item9Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item9Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat2Item10Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat2Item10Item) and Player.Functions.GetItemByName(Config.Cat2Item10Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat2Item10Item], "remove")
    Player.Functions.RemoveItem(Config.Cat2Item10Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat2Item10Price * anzahl)
    local summe = Config.Cat2Item10Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat2Item10Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat2Item10Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)

----------------------- CAT3

RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item1Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item1Item) and Player.Functions.GetItemByName(Config.Cat3Item1Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item1Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item1Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item1Price * anzahl)
    local summe = Config.Cat3Item1Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item1Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item1Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)


RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item2Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item2Item) and Player.Functions.GetItemByName(Config.Cat3Item2Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item2Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item2Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item2Price * anzahl)
    local summe = Config.Cat3Item2Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item2Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item2Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item3Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item3Item) and Player.Functions.GetItemByName(Config.Cat3Item3Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item3Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item3Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item3Price * anzahl)
    local summe = Config.Cat3Item3Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item3Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item3Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item4Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item4Item) and Player.Functions.GetItemByName(Config.Cat3Item4Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item4Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item4Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item4Price * anzahl)
    local summe = Config.Cat3Item4Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item4Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item4Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item5Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item5Item) and Player.Functions.GetItemByName(Config.Cat3Item5Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item5Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item5Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item5Price * anzahl)
    local summe = Config.Cat3Item5Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item5Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item5Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item6Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item6Item) and Player.Functions.GetItemByName(Config.Cat3Item6Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item6Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item6Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item6Price * anzahl)
    local summe = Config.Cat3Item6Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item6Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item6Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item7Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item7Item) and Player.Functions.GetItemByName(Config.Cat3Item7Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item7Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item7Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item7Price * anzahl)
    local summe = Config.Cat3Item7Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item7Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item7Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item8Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item8Item) and Player.Functions.GetItemByName(Config.Cat3Item8Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item8Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item8Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item8Price * anzahl)
    local summe = Config.Cat3Item8Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item8Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item8Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item9Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item9Item) and Player.Functions.GetItemByName(Config.Cat3Item9Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item9Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item9Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item9Price * anzahl)
    local summe = Config.Cat3Item9Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item9Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item9Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)



RegisterNetEvent('mms-shopsystem:server:' .. Config.Cat3Item10Label, function(anzahl)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if  Player.Functions.GetItemByName(Config.Cat3Item10Item) and Player.Functions.GetItemByName(Config.Cat3Item10Item).amount >= anzahl then
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[Config.Cat3Item10Item], "remove")
    Player.Functions.RemoveItem(Config.Cat3Item10Item, anzahl)
    Player.Functions.AddMoney('cash', Config.Cat3Item10Price * anzahl)
    local summe = Config.Cat3Item10Price * anzahl
    TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast ' .. anzahl .. ' ' .. Config.Cat3Item10Label .. ' für ' .. summe ..  ' $ Verkauft!', description =  'Verkauft', type = 'success', duration = 5000 })
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Du hast nicht genug ' .. Config.Cat3Item10Label .. '!', description =  'Fehler', type = 'error', duration = 5000 })
    end
end)


--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()