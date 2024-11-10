Config.Weapons = {
	{
        name = 'WEAPON_NVRIFLE',
        label = ('NV Rifle'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
			{ name = 'clip_default',    	label = _U('component_clip_default'),    	hash = `w_ar_nvrifle_mag1` },
			{ name = 'clip_extended',   	label = _U('component_clip_extended'),   	hash = `w_ar_nvrifle_mag2` },
			{ name = 'suppressor',    		label = _U('component_suppressor'),    		hash = `w_at_nvrifle_supp`	},
			{ name = 'scope_holo',         	label = _U('component_scope_holo'),         hash = `w_at_nvrifle_scope_small` },
			{ name = 'scope_small',         label = _U('component_scope_holo'),     	hash = `w_at_nvrifle_scope_sight` }, --pre equiped
			{ name = 'grip',          		label = _U('component_grip'),          		hash = `w_at_nvrifle_afgrip` },
        }
    },
}