local cooldowns = {}

RegisterCommand('inleveren', function(source, args, user)
    if not Config.Commandstaataan then
        local xPlayer = ESX.GetPlayerFromId(source)
        TriggerClientEvent('okokNotify:Alert', source, 'Error', 'Dit commando staat momenteel uit. Contact het development!', 5000, 'error')
        return
    end

    local xPlayer = ESX.GetPlayerFromId(source)
    local playerID = xPlayer.identifier

    local vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)

    if vehicle ~= 0 then
        local plate = GetVehicleNumberPlateText(vehicle)
        local vehicleModel = GetEntityModel(vehicle)
        local vehicleName = GetHashName(vehicleModel)

        if Config.Voertuigen[vehicleName] then
            MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
                ['@owner'] = xPlayer.identifier,
                ['@plate'] = plate
            }, function (result)
                if result[1] then
                    local price = Config.Voertuigen[vehicleName]

                    SetTimeout(1000, function()
                        MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
                            ['@plate'] = plate
                        }, function(affectedRows)
                            if affectedRows > 0 then
                                xPlayer.addAccountMoney('bank', price)
                                DeleteEntity(vehicle)
                                TriggerClientEvent('okokNotify:Alert', source, 'Succes', 'Je hebt je ' .. vehicleName .. ' ingeleverd en €' .. price .. ' ontvangen. Het bedrag staat nu op je bank.', 5000, 'success')

                                local playerName = xPlayer.getName()
                                local steamName = GetPlayerName(xPlayer.source)
                                local steamID = xPlayer.identifier
                                local license = xPlayer.getIdentifier()
                                local currentTime = os.date('%Y-%m-%d %H:%M:%S')
                                local totalReceiveFormatted = formatMoney(price)

                                TriggerEvent('td_logs:sendLog', 'https://discord.com/api/webhooks/1296111581913944135/qwDvmOGU0gSJ4i_ftauj76xYfb-tKL7nkpJQSDnkWrmgBmtUqZ5uKvdGJ9ceF_jqpaiY', source, {
                                    title = "Voertuig Inlever Logs",
                                    desc = string.format(
                                        "Ingame Naam: %s\nSteam Naam: %s\nSteam Identifier: %s\nRockstar License: %s\nVoertuig: %s\nNummerplaat: %s\nOntvangen Bedrag: €%s\nTijd: %s",
                                        playerName, steamName, steamID, license, vehicleName, plate, totalReceiveFormatted, currentTime
                                    )
                                })

                                cooldowns[playerID] = os.time()
                            else
                                TriggerClientEvent('okokNotify:Alert', source, 'Error', 'Er ging iets mis bij het inleveren van je voertuig.', 5000, 'error')
                            end
                        end)
                    end)
                else
                    TriggerClientEvent('okokNotify:Alert', source, 'Error', 'Dit voertuig is niet van jou.', 5000, 'error')
                end
            end)
        else
            TriggerClientEvent('okokNotify:Alert', source, 'Error', 'Dit voertuig kan niet worden ingeleverd.', 5000, 'error')
        end
    else
        TriggerClientEvent('okokNotify:Alert', source, 'Error', 'Je zit niet in een voertuig.', 5000, 'error')
    end
end)

function GetHashName(modelHash)
    for name, _ in pairs(Config.Voertuigen) do
        if GetHashKey(name) == modelHash then
            return name
        end
    end
    return nil
end

function formatMoney(amount)
    local formatted = amount
    while true do  
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1.%2')
        if (k == 0) then
            break
        end
    end
    return formatted
end