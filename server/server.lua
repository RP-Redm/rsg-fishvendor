local QRCore = exports['qr-core']:GetCoreObject()

-- sell small fish
RegisterServerEvent('rsg-fishvendor:server:sellsmallfish')
AddEventHandler('rsg-fishvendor:server:sellsmallfish', function()
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    local price = 0
    local hassmallfish = false
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "a_c_fishbluegil_01_sm" then 
                    price = price + (Config.SmallFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbluegil_01_sm", Player.PlayerData.items[k].amount, k)
                    hassmallfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishbullheadcat_01_sm" then 
                    price = price + (Config.SmallFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbullheadcat_01_sm", Player.PlayerData.items[k].amount, k)
                    hassmallfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchainpickerel_01_sm" then 
                    price = price + (Config.SmallFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchainpickerel_01_sm", Player.PlayerData.items[k].amount, k)
                    hassmallfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishperch_01_sm" then 
                    price = price + (Config.SmallFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishperch_01_sm", Player.PlayerData.items[k].amount, k)
                    hassmallfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishredfinpickerel_01_sm" then 
                    price = price + (Config.SmallFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishredfinpickerel_01_sm", Player.PlayerData.items[k].amount, k)
                    hassmallfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrockbass_01_sm" then 
                    price = price + (Config.SmallFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrockbass_01_sm", Player.PlayerData.items[k].amount, k)
                    hassmallfish = true
                end
            end
        end
        if hassmallfish == true then
            Player.Functions.AddMoney("cash", price, "fish-sold")
            QRCore.Functions.Notify(source, 'you have sold your small fish for $'..price, 'success')
            hassmallfish = false
        else
            QRCore.Functions.Notify(source, 'you don\'t have any small fish to sell!', 'error')
        end
    end
end)

-- sell medium fish
RegisterServerEvent('rsg-fishvendor:server:sellmediumfish')
AddEventHandler('rsg-fishvendor:server:sellmediumfish', function()
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    local price = 0
    local hasmediumfish = false
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "a_c_fishbluegil_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbluegil_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishbullheadcat_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishbullheadcat_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchainpickerel_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchainpickerel_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlargemouthbass_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlargemouthbass_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishperch_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishperch_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrainbowtrout_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrainbowtrout_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishredfinpickerel_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishredfinpickerel_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrockbass_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrockbass_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsalmonsockeye_01_ml" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsalmonsockeye_01_ml", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsalmonsockeye_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsalmonsockeye_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsmallmouthbass_01_ms" then 
                    price = price + (Config.MediumFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsmallmouthbass_01_ms", Player.PlayerData.items[k].amount, k)
                    hasmediumfish = true
                end
            end
        end
        if hasmediumfish == true then
            Player.Functions.AddMoney("cash", price, "fish-sold")
            QRCore.Functions.Notify(source, 'you have sold your medium fish for $'..price, 'success')
            hasmediumfish = false
        else
            QRCore.Functions.Notify(source, 'you don\'t have any medium fish to sell!', 'error')
        end
    end
end)

-- sell large fish
RegisterServerEvent('rsg-fishvendor:server:selllargefish')
AddEventHandler('rsg-fishvendor:server:selllargefish', function()
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
    local price = 0
    local haslargefish = false
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "a_c_fishchannelcatfish_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchannelcatfish_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishchannelcatfish_01_xl" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishchannelcatfish_01_xl", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlakesturgeon_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlakesturgeon_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlargemouthbass_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlargemouthbass_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishlongnosegar_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishlongnosegar_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishmuskie_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishmuskie_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishnorthernpike_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishnorthernpike_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishrainbowtrout_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishrainbowtrout_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsalmonsockeye_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsalmonsockeye_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                elseif Player.PlayerData.items[k].name == "a_c_fishsmallmouthbass_01_lg" then 
                    price = price + (Config.LargeFishPrice * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("a_c_fishsmallmouthbass_01_lg", Player.PlayerData.items[k].amount, k)
                    haslargefish = true
                end
            end
        end
        if haslargefish == true then
            Player.Functions.AddMoney("cash", price, "fish-sold")
            QRCore.Functions.Notify(source, 'you have sold your large fish for $'..price, 'success')
            haslargefish = false
        else
            QRCore.Functions.Notify(source, 'you don\'t have any large fish to sell!', 'error')
        end
    end
end)
