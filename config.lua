Config = {
    EnableUnlimitedWorldBorder = true, -- Expand the border to int limit (2147483647)
    SonicBoomKmh = 500,                -- Speed required to trigger the sonic boom sound (in km/h) Realistic: 1235
    EnableSpeedHardlimit = true,       -- Enable hard limit speed for vehicles deafultly in fivem its like 500 km/h
    SpeedHardLimitsByName = {          -- Here you can expand the hardlimit speed of vehicles by their gamename
        ["ef2000"] = 2495.0,
    },
    SpeedHardLimitOthers = 500.0, -- Hard limit speed for vehicles not listed in SpeedHardLimitsByName
}
