shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
fx_version 'cerulean'
games {'gta5'}
description 'Add-on Weapon Bought From DoItDigital'
version '10.0'
author 'jerryrebuilds#0360'

---------------------------------------------------------------------------
-- Included Files
---------------------------------------------------------------------------

files{
	'meta/**/*.meta',
}

---------------------------------------------------------------------------
-- Data Files
---------------------------------------------------------------------------

data_file 'WEAPONCOMPONENTSINFO_FILE' 'meta/**/*.meta'
data_file 'WEAPON_METADATA_FILE' 'meta/**/*.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'meta/**/*.meta'
data_file 'PED_PERSONALITY_FILE' 'meta/**/*.meta'
data_file 'WEAPONINFO_FILE' 'meta/**/*.meta'

---------------------------------------------------------------------------
-- Tebex Requests
---------------------------------------------------------------------------

escrow_ignore {
	'Extra_Files/**/*.lua',
}

client_script 'cl_weaponNames.lua'
---------------------------------------------------------------------------
dependency '/assetpacks'