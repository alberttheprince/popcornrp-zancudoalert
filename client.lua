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


local poly = lib.zones.poly({
    points = {
        vec3(-2206.0, 3632.0, 62.81),
		vec3(-2134.0, 3577.0, 62.81),
		vec3(-2049.0, 3510.0, 62.81),
		vec3(-1895.0, 3422.0, 62.81),
		vec3(-1551.0, 3195.0, 62.81),
		vec3(-1557.0, 2987.0, 62.81),
		vec3(-1551.0, 2879.0, 62.81),
		vec3(-1592.0, 2788.0, 62.81),
		vec3(-1788.0, 2748.0, 62.81),
		vec3(-1876.0, 2744.0, 62.81), 
		vec3(-2017.0, 2764.0, 62.81),
		vec3(-2089.0, 2766.0, 62.81),
		vec3(-2159.0, 2790.0, 62.81),
		vec3(-2159.0, 2790.0, 62.81),
		vec3(-2205.0, 2846.0, 62.81),
		vec3(-2258.0, 2879.0, 62.81),
		vec3(-2327.0, 2892.0, 62.81),
		vec3(-2397.0, 2884.0, 62.81),
		vec3(-2470.0, 2895.0, 62.81),
		vec3(-2529.0, 2937.0, 62.81),
		vec3(-2554.0, 3018.0, 62.81),
		vec3(-2598.0, 3086.0, 62.81),
		vec3(-2675.0, 3129.0, 62.81),
		vec3(-2675.0, 3129.0, 62.81),
		vec3(-2748.0, 3170.0, 62.81),
		vec3(-2819.0, 3234.0, 62.81),
		vec3(-2819.0, 3235.0, 62.81),
		vec3(-2900.0, 3325.0, 62.81),
		vec3(-2846.0, 3419.0, 62.81), 
		vec3(-2574.0, 3328.0, 62.81),
		vec3(-2384.0, 3443.0, 62.81),
    },
    thickness = 75,
    debug = false,
    inside = inside,
    onEnter = onEnter,
    onExit = onExit
})
