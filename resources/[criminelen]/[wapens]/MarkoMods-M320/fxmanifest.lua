shared_script '@FIVEGUARD/ai_module_fg-obfuscated.lua'
shared_script '@FIVEGUARD/shared_fg-obfuscated.lua'
fx_version 'cerulean'
games {'gta5'}
description 'Markomods.com m320'

files{
	'**/markomods-m320a-components.meta',
	'**/markomods-m320a-archetypes.meta',
	'**/markomods-m320a-animations.meta',
	'**/markomods-m320a-pedpersonality.meta',
	'**/markomods-m320a.meta',
	'**/markomods-m320b-components.meta',
	'**/markomods-m320b-archetypes.meta',
	'**/markomods-m320b-animations.meta',
	'**/markomods-m320b-pedpersonality.meta',
	'**/markomods-m320b.meta',
}

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/markomods-m320a-components.meta'
data_file 'WEAPON_METADATA_FILE' '**/markomods-m320a-archetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/markomods-m320a-animations.meta'
data_file 'PED_PERSONALITY_FILE' '**/markomods-m320a-pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/markomods-m320a.meta'

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/markomods-m320b-components.meta'
data_file 'WEAPON_METADATA_FILE' '**/markomods-m320b-archetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/markomods-m320b-animations.meta'
data_file 'PED_PERSONALITY_FILE' '**/markomods-m320b-pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/markomods-m320b.meta'

client_script 'cl_weaponNames.lua'

escrow_ignore {
	'stream/**/*.ytd',
	'data/**/*.meta',
	'cl_weaponNames.lua'
}
  
lua54 'yes'
dependency '/assetpacks'