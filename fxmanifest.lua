fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

author 'RexShack#3041'
description 'rsg-fishvendor'
version '1.0.0'

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    '@rsg-core/shared/locale.lua',
    'locales/en.lua', -- Change this to your preferred language
}

dependencies {
    'rsg-core',
    'ox_lib',
}

lua54 'yes'