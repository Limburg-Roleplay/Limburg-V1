shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
--
--███████╗██╗░░░░░██╗░░░██╗███████╗███████╗██╗░░░██╗███╗░░░███╗░█████╗░██████╗░░██████╗
--██╔════╝██║░░░░░██║░░░██║██╔════╝██╔════╝╚██╗░██╔╝████╗░████║██╔══██╗██╔══██╗██╔════╝
--█████╗░░██║░░░░░██║░░░██║█████╗░░█████╗░░░╚████╔╝░██╔████╔██║██║░░██║██║░░██║╚█████╗░
--██╔══╝░░██║░░░░░██║░░░██║██╔══╝░░██╔══╝░░░░╚██╔╝░░██║╚██╔╝██║██║░░██║██║░░██║░╚═══██╗
--██║░░░░░███████╗╚██████╔╝██║░░░░░██║░░░░░░░░██║░░░██║░╚═╝░██║╚█████╔╝██████╔╝██████╔╝
--╚═╝░░░░░╚══════╝░╚═════╝░╚═╝░░░░░╚═╝░░░░░░░░╚═╝░░░╚═╝░░░░░╚═╝░╚════╝░╚═════╝░╚═════╝░
--
--  █▀▄ █ █▀ █▀▀ █▀█ █▀█ █▀▄ ░ █▀▀ █▀▀ ░░▄▀ █▀▀ █░░ █░█ █▀▀ █▀▀ █▄█ █▀▄▀█ █▀█ █▀▄ █▀
--  █▄▀ █ ▄█ █▄▄ █▄█ █▀▄ █▄▀ ▄ █▄█ █▄█ ▄▀░░ █▀░ █▄▄ █▄█ █▀░ █▀░ ░█░ █░▀░█ █▄█ █▄▀ ▄█







fx_version 'cerulean'
games {'gta5'}
description 'www.fluffymods.com'

files{
	'**/weaponcomponents.meta',
	'**/weaponarchetypes.meta',
	'**/weaponanimations.meta',
	'**/pedpersonality.meta',
	'**/weapons.meta',
}

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' '**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' '**/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/weapons.meta'


escrow_ignore {
  'stream/**/*.ytd',
  'stream/**/*.ydr',  
  'data/**/*.meta',
  'cl_weaponNames.lua'
}

client_script 'cl_weaponNames.lua'
lua54 'yes'

dependency '/assetpacks'