local QBCore = exports['qb-core']:GetCoreObject()

function onEnter(self)
    PlayerData = QBCore.Functions.GetPlayerData() -- remove PlayerData = QBCore.Functions.GetPlayerData() if you want this to be standalone or change for your framework
    if (PlayerData.job.name ~= 'police') and (PlayerData.job.name ~= 'ambulance') then -- remove (PlayerData.job ~= 'police' or 'ambulance') if you want this to be standalone or change for your framework
    SetMaxWantedLevel(5)
    SetPlayerWantedLevel(PlayerId(), 3, false)
    SetPlayerWantedLevelNow(PlayerId(), false)
    print(GetPlayerWantedLevel(PlayerId()))
    end
end

function onInside(self)
    SetMaxWantedLevel(5)
    SetPlayerWantedLevel(PlayerId(), 3, false)
    SetPlayerWantedLevelNow(PlayerId(), false)
    print(GetPlayerWantedLevel(PlayerId()))
end
 
function onExit(self)
    ClearPlayerWantedLevel(PlayerId())
end


local sphere = lib.zones.sphere({
    coords = vec3(-2243.77, 3141.49, 32.81),
    radius = 700,
    debug = false,
    onEnter = onEnter,
    onInside = onInside,
    onExit = onExit
})
