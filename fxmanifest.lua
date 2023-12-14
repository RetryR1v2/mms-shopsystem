fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

description 'mms-shopsystem'
version '1.1.1'
author 'Markus Mueller'

client_scripts {
	'client/client.lua'
}

server_scripts {
	'server/server.lua'
}

shared_scripts {
	'@ox_lib/init.lua',
    '@rsg-core/shared/locale.lua',
    'config.lua',
}

dependency 'rsg-core'

lua54 'yes'