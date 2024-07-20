game 'gta5'
fx_version 'cerulean'
author "Focaan"
description "Beta AFK system. Used to kick afk players."
version "0.1 Beta"
lua54 "true"

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
    'sv_config.lua'
}
