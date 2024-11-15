lib.locale()

Shared = {}

Shared.Settings = {
    ['GHB'] = {
        ['Max Spawn Limit'] = 1000,
        ['Pick-Up'] = {
            ['Animation'] = {
                ['Dict'] = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                ['Clip'] = 'machinic_loop_mechandplayer'
            }
        },
        ['Items'] = {
            ['Add'] = {
                ['Item'] = { 'ghb_ton' },
                ['IsRandomized'] = true,
                ['Amount'] = { 2, 5 }
            }
        },
        ['ObjectHash'] = `prop_gascyl_01a`,
        ['Target Interaction'] = {
            ['Icon'] = 'fa-solid fa-flask',
            ['Label'] = '[E] - GHB verzamelen'
        },
        ['Coordinates'] = vec3(2539.2300, 4811.5410, 33.7717)
    },
    ['METH'] = {
        ['Max Spawn Limit'] = 1000,
        ['Pick-Up'] = {
            ['Animation'] = {
                ['Dict'] = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                ['Clip'] = 'machinic_loop_mechandplayer'
            }
        },
        ['Items'] = {
            ['Add'] = {
                ['Item'] = { 'meth' },
                ['IsRandomized'] = true,
                ['Amount'] = { 2, 4 }
            }
        },
        ['ObjectHash'] = `prop_barrier_wat_04b`,
        ['Target Interaction'] = {
            ['Icon'] = 'fa-solid fa-flask',
            ['Label'] = '[E] - Meth verzamelen'
        },
        ['Coordinates'] = vec3(-47.8312, 3348.7878, 45.2680)
    },
    ['LSD'] = {
        ['Max Spawn Limit'] = 1000,
        ['Pick-Up'] = {
            ['Animation'] = {
                ['Dict'] = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                ['Clip'] = 'machinic_loop_mechandplayer'
            }
        },
        ['Items'] = {
            ['Add'] = {
                ['Item'] = { 'lsd' },
                ['IsRandomized'] = true,
                ['Amount'] = { 1, 5 }
            }
        },
        ['ObjectHash'] = `prop_rad_waste_barrel_01`,
        ['Target Interaction'] = {
            ['Icon'] = 'fa-solid fa-skull-crossbones',
            ['Label'] = '[E] - LSD verzamelen'
        },
        ['Coordinates'] = vec3(259.7490, 6459.5015, 31.4056)
    }
}