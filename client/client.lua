local RSGCore = exports['rsg-core']:GetCoreObject()
local anzahl = nil
---------------------------------------------------------------------------------


---------------------- Create Shops --------------

Citizen.CreateThread(function()
    for maischer,v in pairs(Config.shops) do
        exports['rsg-core']:createPrompt(v.name, v.coords, RSGCore.Shared.Keybinds['J'],  (' ') .. v.lable, {
            type = 'client',
            event = 'mms-shopsystem:client:shopmenu',
            args = {},
        })
        if v.showblip == true then
            local shopmain = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(shopmain, GetHashKey(v.blipSprite), true)
            SetBlipScale(shopmain, v.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, shopmain, v.blipName)
        end
    end
end)

RegisterNetEvent('mms-shopsystem:client:shopmenu', function()
    lib.registerContext(
        {
            id = 'shopmenu',
            title = ('Shop'),
            position = 'top-right',
            options = {
                {
                    title = (Config.categorie1 ..  '.'),
                    description = (Config.categorie1 .. '.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.categorie1,
                },
                {
                    title = (Config.categorie2 ..  '.'),
                    description = (Config.categorie2 .. '.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.categorie2,
                },
                {
                    title = (Config.categorie3 ..  '.'),
                    description = (Config.categorie3 .. '.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.categorie3,
                },
            }
        }
    )
    lib.showContext('shopmenu')
end)

----------------------------- CAT 1

RegisterNetEvent('mms-shopsystem:client:' .. Config.categorie1, function()
    lib.registerContext(
        {
            id = 'shopcat1',
            title = (Config.categorie1),
            position = 'top-right',
            options = {
                {
                    title = (Config.Cat1Item1Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item1Label .. ' für ' .. Config.Cat1Item1Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item1Label,
                },
                {
                    title = (Config.Cat1Item2Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item2Label .. ' für ' .. Config.Cat1Item2Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item2Label,
                },
                {
                    title = (Config.Cat1Item3Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item3Label .. ' für ' .. Config.Cat1Item3Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item3Label,
                },
                {
                    title = (Config.Cat1Item4Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item4Label .. ' für ' .. Config.Cat1Item4Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item4Label,
                },
                {
                    title = (Config.Cat1Item5Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item5Label .. ' für ' .. Config.Cat1Item5Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item5Label,
                },
                {
                    title = (Config.Cat1Item6Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item6Label .. ' für ' .. Config.Cat1Item6Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item6Label,
                },
                {
                    title = (Config.Cat1Item7Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item7Label .. ' für ' .. Config.Cat1Item7Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item7Label,
                },
                {
                    title = (Config.Cat1Item8Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item8Label .. ' für ' .. Config.Cat1Item8Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item8Label,
                },
                {
                    title = (Config.Cat1Item9Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item9Label .. ' für ' .. Config.Cat1Item9Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item9Label,
                },
                {
                    title = (Config.Cat1Item10Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item10Label .. ' für ' .. Config.Cat1Item10Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item10Label,
                },
                {
                    title = (Config.Cat1Item11Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item11Label .. ' für ' .. Config.Cat1Item11Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item11Label,
                },
                {
                    title = (Config.Cat1Item12Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat1Item12Label .. ' für ' .. Config.Cat1Item12Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat1Item12Label,
                },
            }
        }
    )
    lib.showContext('shopcat1')
end)


-------------- Verkaufe CAT1

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item1Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item1Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item1Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item1Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item2Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item2Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item2Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item2Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item3Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item3Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item3Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item3Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item4Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item4Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item4Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item4Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item5Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item5Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item5Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item5Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item6Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item6Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item6Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item6Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item7Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item7Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item7Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item7Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item8Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item8Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item8Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item8Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item9Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item9Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item9Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item9Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item10Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item10Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item10Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item10Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item11Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item11Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item11Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item11Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat1Item12Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat1Item12Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat1Item12Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat1Item12Label, anzahl)
end)

--------------------- CAT 2

RegisterNetEvent('mms-shopsystem:client:' .. Config.categorie2, function()
    lib.registerContext(
        {
            id = 'shopcat2',
            title = (Config.categorie2),
            position = 'top-right',
            options = {
                {
                    title = (Config.Cat2Item1Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item1Label .. ' für ' .. Config.Cat2Item1Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item1Label,
                },
                {
                    title = (Config.Cat2Item2Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item2Label .. ' für ' .. Config.Cat2Item2Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item2Label,
                },
                {
                    title = (Config.Cat2Item3Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item3Label .. ' für ' .. Config.Cat2Item3Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item3Label,
                },
                {
                    title = (Config.Cat2Item4Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item4Label .. ' für ' .. Config.Cat2Item4Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item4Label,
                },
                {
                    title = (Config.Cat2Item5Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item5Label .. ' für ' .. Config.Cat2Item5Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item5Label,
                },
                {
                    title = (Config.Cat2Item6Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item6Label .. ' für ' .. Config.Cat2Item6Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item6Label,
                },
                {
                    title = (Config.Cat2Item7Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item7Label .. ' für ' .. Config.Cat2Item7Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item7Label,
                },
                {
                    title = (Config.Cat2Item8Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item8Label .. ' für ' .. Config.Cat2Item8Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item8Label,
                },
                {
                    title = (Config.Cat2Item9Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item9Label .. ' für ' .. Config.Cat2Item9Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item9Label,
                },
                {
                    title = (Config.Cat2Item10Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat2Item10Label .. ' für ' .. Config.Cat2Item10Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat2Item10Label,
                }, 
            }
        }
    )
    lib.showContext('shopcat2')
end)

-------------- Verkaufe CAT2

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item1Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item1Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item1Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item1Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item2Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item2Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item2Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item2Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item3Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item3Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item3Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item3Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item4Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item4Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item4Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item4Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item5Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item5Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item5Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item5Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item6Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item6Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item6Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item6Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item7Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item7Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item7Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item7Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item8Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item8Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item8Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item8Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item9Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item9Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item9Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item9Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat2Item10Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat2Item10Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat2Item10Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat2Item10Label, anzahl)
end)


--------------------- CAT 3

RegisterNetEvent('mms-shopsystem:client:' .. Config.categorie3, function()
    lib.registerContext(
        {
            id = 'shopcat3',
            title = (Config.categorie3),
            position = 'top-right',
            options = {
                {
                    title = (Config.Cat3Item1Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item1Label .. ' für ' .. Config.Cat3Item1Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item1Label,
                },
                {
                    title = (Config.Cat3Item2Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item2Label .. ' für ' .. Config.Cat3Item2Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item2Label,
                },
                {
                    title = (Config.Cat3Item3Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item3Label .. ' für ' .. Config.Cat3Item3Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item3Label,
                },
                {
                    title = (Config.Cat3Item4Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item4Label .. ' für ' .. Config.Cat3Item4Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item4Label,
                },
                {
                    title = (Config.Cat3Item5Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item5Label .. ' für ' .. Config.Cat3Item5Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item5Label,
                },
                {
                    title = (Config.Cat3Item6Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item6Label .. ' für ' .. Config.Cat3Item6Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item6Label,
                },
                {
                    title = (Config.Cat3Item7Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item7Label .. ' für ' .. Config.Cat3Item7Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item7Label,
                },
                {
                    title = (Config.Cat3Item8Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item8Label .. ' für ' .. Config.Cat3Item8Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item8Label,
                },
                {
                    title = (Config.Cat3Item9Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item9Label .. ' für ' .. Config.Cat3Item9Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item9Label,
                },
                {
                    title = (Config.Cat3Item10Label ..  '.'),
                    description = ('Verkaufe 1 ' .. Config.Cat3Item10Label .. ' für ' .. Config.Cat3Item10Price ..'$.' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Cat3Item10Label,
                }, 
            }
        }
    )
    lib.showContext('shopcat3')
end)

-------------- Verkaufe CAT3

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item1Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item1Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item1Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item1Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item2Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item2Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item2Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item2Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item3Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item3Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item3Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item3Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item4Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item4Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item4Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item4Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item5Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item5Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item5Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item5Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item6Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item6Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item6Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item6Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item7Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item7Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item7Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item7Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item8Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item8Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item8Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item8Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item9Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item9Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item9Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item9Label, anzahl)
end)

RegisterNetEvent('mms-shopsystem:client:' .. Config.Cat3Item10Label)
AddEventHandler('mms-shopsystem:client:' .. Config.Cat3Item10Label, function()
        input = lib.inputDialog('Wie Viele ?', {
            { 
                type = 'number',
                label = 'Anzahl ' .. Config.Cat3Item10Label,
                required = true,
                allowCancel = true,
                min = 1, max = 50,
            },
        })
        if input then
            anzahl = input[1]
        else return
            end
    TriggerServerEvent('mms-shopsystem:server:' .. Config.Cat3Item10Label, anzahl)
end)