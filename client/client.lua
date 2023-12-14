local RSGCore = exports['rsg-core']:GetCoreObject()

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
                    title = (Config.categorie1 ..  ' !'),
                    description = (Config.categorie1 .. ' !' ),
                    icon = 'fas fa-shop',
                    event = 'mms-shopsystem:client:' .. Config.Categorie1,
                },
            }
        }
    )
    lib.showContext('shopmenu')
end)