Citizen.CreateThread(function()
    while true do
        Wait(0)
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 0, 5000.0)
        Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 1, 5000.0)
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 0, 5000.0)
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 1, 5000.0)
    end
end)

function equipPlayer(playerPedId, weaponHash)
    Citizen.InvokeNative(0x5E3BDDBCB83F3D84, playerPedId, weaponHash, 0, false, true)
    SetPedAmmo(playerPedId, weaponHash, 100)
end

RegisterNetEvent("jtmcraft:equip")
AddEventHandler("jtmcraft:equip", function()
    playerPedId = GetPlayerPed()
    Citizen.InvokeNative(0x1B83C0DEEBCBB214, playerPedId)
    RemoveAllPedWeapons(playerPedId, true, true)
    equipPlayer(playerPedId, GetHashKey("WEAPON_SNIPERRIFLE_ROLLINGBLOCK"))
    equipPlayer(playerPedId, GetHashKey("WEAPON_REPEATER_WINCHESTER"))
    equipPlayer(playerPedId, GetHashKey("WEAPON_PISTOL_M1899"))
end)
