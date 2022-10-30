local QRCore = exports['qr-core']:GetCoreObject()
local fishvendor
local name = nil

-- prompts
Citizen.CreateThread(function()
    for fishvendor, v in pairs(Config.FishVendorLocations) do
		local name = v.name
        exports['qr-core']:createPrompt(v.location, v.coords, QRCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
            type = 'client',
            event = 'rsg-fishvendor:client:menu',
            args = { name },
        })
        if v.showblip == true then
            local FishVendorBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(FishVendorBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(FishVendorBlip, Config.Blip.blipScale)
			Citizen.InvokeNative(0x9CB1A1623062F402, FishVendorBlip, Config.Blip.blipName)
        end
    end
end)

-- fishvendor menu
RegisterNetEvent('rsg-fishvendor:client:menu', function(vendorname)
    exports['qr-menu']:openMenu({
        {
            header = vendorname,
            isMenuHeader = true,
        },
        {
            header = "Sell Small Fish",
            txt = "we currently pay $"..Config.SmallFishPrice..".00 per small fish",
			icon = "fas fa-fish",
            params = {
                event = 'rsg-fishvendor:server:sellsmallfish',
				isServer = true,
            }
        },
        {
            header = "Sell Medium Fish",
            txt = "we currently pay $"..Config.MediumFishPrice..".00 per medium fish",
			icon = "fas fa-fish",
            params = {
                event = 'rsg-fishvendor:server:sellmediumfish',
				isServer = true,
            }
        },
        {
            header = "Sell Large Fish",
            txt = "we currently pay $"..Config.LargeFishPrice..".00 per large fish",
			icon = "fas fa-fish",
            params = {
                event = 'rsg-fishvendor:server:selllargefish',
				isServer = true,
            }
        },
        {
            header = "Open Fish Vendor Shop",
            txt = "buy items from the fish vendor",
			icon = "fas fa-shopping-basket",
            params = {
                event = 'rsg-fishvendor:client:OpenFishVendorShop',
				isServer = false,
				args = {}
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'qr-menu:closeMenu',
            }
        },
    })
end)

RegisterNetEvent('rsg-fishvendor:client:OpenFishVendorShop')
AddEventHandler('rsg-fishvendor:client:OpenFishVendorShop', function()
    local ShopItems = {}
    ShopItems.label = "Fish Vendor Shop"
    ShopItems.items = Config.FishVendorShop
    ShopItems.slots = #Config.FishVendorShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "FishVendor_"..math.random(1, 99), ShopItems)
end)
