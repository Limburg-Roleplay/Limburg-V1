shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
shared_script '@FIVEGUARD/shared_fg-obfuscated.lua'
fx_version 'cerulean'
games {'gta5'}
description 'MarkoMods.com MB47'

files{
	'**/markomods-mb47-components.meta',
	'**/markomods-mb47-archetypes.meta',
	'**/markomods-mb47-animations.meta',
	'**/markomods-mb47-pedpersonality.meta',
	'**/markomods-mb47.meta',
}

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/markomods-mb47-components.meta'
data_file 'WEAPON_METADATA_FILE' '**/markomods-mb47-archetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/markomods-mb47-animations.meta'
data_file 'PED_PERSONALITY_FILE' '**/markomods-mb47-pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/markomods-mb47.meta'

client_script 'cl_weaponNames.lua'

escrow_ignore {
	'stream/**/*.ytd',
	'data/**/*.meta',
	'cl_weaponNames.lua'
}
  
lua54 'yes'
dependency '/assetpacks'