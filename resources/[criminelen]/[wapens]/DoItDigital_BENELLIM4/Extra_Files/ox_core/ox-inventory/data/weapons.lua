return {
	Weapons = {
		-- ShotGun
		['WEAPON_BENELLIM4'] = {
			label = 'BENELLIM4',
			weight = 5200,
			durability = 0.05,
			ammoname = 'ammo-shotgun'
		},
	},

	Components = {
		['at_suppressor_heavy'] = {
			label = 'Tactical Suppressor',
			weight = 280,
			type = 'muzzle',
			client = {
				component = {
					`w_at_sg_benellim4_supp`,
				},
				usetime = 2500
			}
		},
	},
}
