Config = {}

Config.Webhooks = {
    PromoteWebhook = "https://discord.com/api/webhooks/1259270280824623226/PndN2wIrZoY3dj8W9NRzU2_DGfReRtvpPTwA1lRQhQ5VYCGCNj6A-eHWYS7ATnAbEVKC",
    DemoteWebhook = "https://discord.com/api/webhooks/1259270280824623226/PndN2wIrZoY3dj8W9NRzU2_DGfReRtvpPTwA1lRQhQ5VYCGCNj6A-eHWYS7ATnAbEVKC",
    OntslaanWebhook = "https://discord.com/api/webhooks/1259270280824623226/PndN2wIrZoY3dj8W9NRzU2_DGfReRtvpPTwA1lRQhQ5VYCGCNj6A-eHWYS7ATnAbEVKC",
    AaneemWebhook = "https://discord.com/api/webhooks/1259270280824623226/PndN2wIrZoY3dj8W9NRzU2_DGfReRtvpPTwA1lRQhQ5VYCGCNj6A-eHWYS7ATnAbEVKC"
}

Config.Locale = 'en' -- Taal locale [Alleen engels werkt voor nu!]

Config.Blip = true -- Blip op map

Config.Fouilleertimer = 3 -- Tijd staat in seconden! [Dit is hoelang de progressbar is!]

Config.Markerdistance = 15 -- Hoe dichtbij iemand in de range van de wapeninkoop moet zijn voordat je een console print krijgt. [in meters!]

Config.WitwasMissie = {
    title = 'Witwas Missie', -- Naam van de witwas
    description = 'Witwas missie starten', -- Bijnaam van de witwas
    minProcent = 85,  -- Minimum percentage
    maxProcent = 100,  -- Maximum percentage
    Aflevercoordswitwas = { -- Lijst van coördinaten
        vec3(787.4402, 1278.6433, 360.2965),
        vec3(-66.6006, 1897.9714, 196.1356), -- Voeg hier meer coördinaten toe
        vec3(181.9905, 3056.7617, 43.0167)
    }
}


Config.Wapeninkoopgangs = {
    jansen = {
        [1] = {
            gangname = "jansen",
            mingrade = 2,
            ganglevel = 5,
            coordsbossmenu = vector3(473.3943, -1310.1309, 29.2269),
            coordswapeninkoop = vector3(479.3991, -1325.6292, 29.2075),
            Startcoordswitwas = vector3(510.3524, -1314.4404, 29.3410)
        },
        f6menu = true
    },
     cjng = {
        [1] = {
            gangname = "cjng",
            mingrade = 7,
            ganglevel = 5,
            coordsbossmenu = vector3(360.8562, -2040.7520, 25.5946),
			coordswapeninkoop = vector3(331.9081, -2013.5154, 22.3949),
            Startcoordswitwas = vector4(355.8191, -1965.7003, 24.4911, 57.5622)
        },
        f6menu = true
    },
     sinaloa = {
        [1] = {
            gangname = "sinaloa",
            mingrade = 8,
            ganglevel = 4,
            coordsbossmenu = vector3(1395.1283, 1160.1110, 114.3335),
			coordswapeninkoop = vector3(1399.9739, 1139.6368, 114.3336),
            Startcoordswitwas = vector3(1395.1283, 1160.1110, 114.3335)
        },
        f6menu = true
    },
    ccf = {
        [1] = {
            gangname = "ccf",
            mingrade = 8,
            ganglevel = 1,
            coordsbossmenu = vector3(-1101.6047, -1615.5483, 8.5928),
			coordswapeninkoop = vector3(-1070.9995, -1647.0813, 4.4633),
            Startcoordswitwas = vector3(-1136.8572, -1578.7875, 4.4293)
        },
        f6menu = true
    },
    chipmunks = {
        [1] = {
            gangname = "chipmunks",
            mingrade = 5,
            ganglevel = 1,
            coordsbossmenu = vector3(-640.5219, 941.3781, 243.9728),
			coordswapeninkoop = vector3(-628.1700, 948.3683, 243.9465),
            Startcoordswitwas = vector4(-716.7307, 1019.0453, 240.2595, 340.5587)
        },
        f6menu = true
    },
    hsq = {
        [1] = {
            gangname = "hsq",
            mingrade = 6,
            ganglevel = 1,
            coordsbossmenu = vector3(133.0420, 1218.2458, 217.6068),
			coordswapeninkoop = vector3(115.3486, 1241.1381, 214.1099),
            Startcoordswitwas = vector4(133.0420, 1218.2458, 217.6068, 105.3736)
        },
        f6menu = true
    },
    sons = {
        [1] = {
            gangname = "sons",
            mingrade = 6,
            ganglevel = 1,
            coordsbossmenu = vector3(982.9077, -91.9958, 74.8522),
			coordswapeninkoop = vector3(987.7953, -137.5166, 73.0909),
            Startcoordswitwas = vector4(965.0928, -131.2782, 74.3512, 146.53631)
        },
        f6menu = true
    },
    albanesemaffia = {
        [1] = {
            gangname = "albanesemaffia",
            mingrade = 6,
            ganglevel = 4,
            coordsbossmenu = vector3(-1796.4912, 450.6630, 128.5074),
			coordswapeninkoop = vector3(-1794.6030, 420.5770, 125.2128),
            Startcoordswitwas = vector4(-1807.0393, 354.8736, 88.6016, 117.3320)
        },
        f6menu = true
    },
    vissenkom = {
        [1] = {
            gangname = "vissenkom",
            mingrade = 3,
            ganglevel = 4,
            coordsbossmenu = vector3(-1990.5211, -504.5139, 20.7328),
			coordswapeninkoop = vector3(-1982.9875, -502.9479, 12.1917),
        },
        f6menu = true
    },
    angelsofdeath = {
        [1] = {
            gangname = "angelsofdeath",
            mingrade = 7,
            ganglevel = 2,
            coordsbossmenu = vector3(-263.7994, -728.3154, 125.4733),
			coordswapeninkoop = vector3(-316.1113, -746.9086, 28.0286),
            Startcoordswitwas = vector4(-303.5113, -703.2805, 30.1414, 337.8767)
        },
        f6menu = true
    },
    vatoslocos = {
        [1] = {
            gangname = "vatoslocos",
            mingrade = 5,
            ganglevel = 4,
            coordsbossmenu = vector3(-1592.2097, -21.6209, 57.5767),
			coordswapeninkoop = vector3(-1582.2375, -31.4063, 52.6013),
            Startcoordswitwas = vector4(-1525.6399, -27.2629, 57.2930, 303.5891)
        },
        f6menu = true
    },
    clubnatalia = {
        [1] = {
            gangname = "clubnatalia",
            mingrade = 4,
            ganglevel = 1,
            coordsbossmenu = vector3(-301.6631, -1297.4349, 37.8450),
			coordswapeninkoop = vector3(0, 0, 0),
            Startcoordswitwas = vector4(0, 0, 0, 0)
        },
        f6menu = false
    },
}

-- Tiewrap systeem

Config.Pushing = {
    pushingAnimDict = 'switch@trevor@escorted_out',
    pushingAnim = '001215_02_trvs_12_escorted_out_idle_guard2'
}

Config.Walking = {
    ['walkingAnimDict'] = 'anim@move_m@grooving@',
    ['walkingAnim'] = 'walk'
}

Config.GetClosestPlayer = function()
   return ESX.OneSync.GetClosestPlayer()
end