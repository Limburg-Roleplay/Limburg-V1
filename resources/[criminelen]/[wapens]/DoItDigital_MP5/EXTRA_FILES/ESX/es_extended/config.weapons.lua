Config.Weapons = {
	{
		name = 'WEAPON_MP5',
		label = ('MP5'),
		ammo = { label = _U('ammo_rounds'), hash = `AMMO_SMG` },
		components = {
			{ name = 'clip_default',  		label = _U('component_clip_default'), 			hash = `w_sb_mp5_mag1`	},
			{ name = 'clip_extended',  		label = _U('component_clip_default'), 			hash = `w_sb_mp5_mag2`	},
			{ name = 'suppressor',    		label = _U('component_suppressor'),    			hash = `w_at_mp5_supp`	},
			{ name = 'scope_holo',         	label = _U('component_scope_holo'),         	hash = `w_at_mp5_scope` },
		}
	},
}