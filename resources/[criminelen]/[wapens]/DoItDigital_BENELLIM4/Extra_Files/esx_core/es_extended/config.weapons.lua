Config.Weapons = {
    -- Do It Digital Weapons
	{
        name = 'WEAPON_BENELLIM4',
        label = ('BENELLI M4'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
        components = {
            { name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_sg_benellim4_supp') },
        }
    },
}