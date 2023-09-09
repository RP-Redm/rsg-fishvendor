local Translations = {
error = {
    no_small_fish = 'você não tem peixes pequenos para vender!',
    no_medium_fish = 'você não tem peixes médios para vender!',
    no_large_fish = 'você não tem peixes grandes para vender!',
},
success = {
    small_fish_sold = 'você vendeu seus peixes pequenos por $',
    medium_fish_sold = 'você vendeu seus peixes médios por $',
    large_fish_sold = 'você vendeu seus peixes grandes por $',
},
menu = {
    open_prompt = 'Abrir ',
    sell_small_fish = 'Vender Peixes Pequenos',
    sell_medium_fish = 'Vender Peixes Médios',
    sell_large_fish = 'Vender Peixes Grandes',
    we_currently_pay = 'pagamos $',
    per_small_fish = '.00 por peixe pequeno',
    per_medium_fish = '.00 por peixe médio',
    per_large_fish = '.00 por peixe grande',
    open_shop = 'Abrir Loja de Peixes',
    buy_items_txt = 'comprar itens do vendedor de peixes',
    close_menu = 'Fechar Menu',
},

}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
