--[[
    Cat | Quy relesea version
]] if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game:GetService("Players").LocalPlayer:Kick("Do not Support, Please wait...")
end

local id = game.PlaceId
if id == 2753915549 then
    First_Sea = true;
elseif id == 4442272183 then
    Second_Sea = true;
elseif id == 7449423635 then
    Third_Sea = true;
else
    game:Shutdown()
end

-- anti ban 
function AntiBan()
    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name ==
                "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
    end
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name ==
                "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
    end
end
AntiBan()

----// Join Team \\------------------------------------------------------------------
if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer
                                         .PlayerGui.Main.ChooseTeam.Container
                                         .Pirates.Frame.TextButton.Activated)) do
        for a, b in pairs(getconnections(
                              game:GetService("UserInputService").TouchTapInWorld)) do
            b:Fire()
        end
        v.Function()
    end
end

----// Check Quest \\----------------------------------------------------------------
function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231,
                                     0.939700544, -0, -0.341998369, 0, 1, -0,
                                     0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215,
                                   1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0,
                                     1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094,
                                   11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0,
                                     1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969,
                                   -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498,
                                     0.965929627, -0, -0.258804798, 0, 1, -0,
                                     0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906,
                                   3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498,
                                     0.965929627, -0, -0.258804798, 0, 1, -0,
                                     0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414,
                                   4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359,
                                     0.819155693, -0, -0.573571265, 0, 1, -0,
                                     0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249,
                                   4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359,
                                     0.819155693, -0, -0.573571265, 0, 1, -0,
                                     0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926,
                                   4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796,
                                     -0.342042685, 0, 0.939684391, 0, 1, 0,
                                     -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578,
                                   -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796,
                                     -0.342042685, 0, 0.939684391, 0, 1, 0,
                                     -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375,
                                   -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0,
                                     -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465,
                                   4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165,
                                     0.866007268, 0, 0.500031412, 0, 1, 0,
                                     -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625,
                                   -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165,
                                     0.866007268, 0, 0.500031412, 0, 1, 0,
                                     -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469,
                                   -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514,
                                     -0.0894274712, -5.00292918e-09,
                                     -0.995993316, 1.60817859e-09, 1,
                                     -5.16744869e-09, 0.995993316,
                                     -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959,
                                   474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514,
                                     -0.0894274712, -5.00292918e-09,
                                     -0.995993316, 1.60817859e-09, 1,
                                     -5.16744869e-09, 0.995993316,
                                     -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539,
                                   866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534,
                                     -0.515037298, 0, -0.857167721, 0, 1, 0,
                                     0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133,
                                   -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534,
                                     -0.515037298, 0, -0.857167721, 0, 1, 0,
                                     0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594,
                                   -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395,
                                     -0.499959469, 0, 0.866048813, 0, 1, 0,
                                     -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797,
                                   8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395,
                                     -0.499959469, 0, 0.866048813, 0, 1, 0,
                                     -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234,
                                   8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483,
                                     1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422,
                                   1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483,
                                     1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422,
                                   1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643,
                                     0.996191859, -0, -0.0871884301, 0, 1, -0,
                                     0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625,
                                   -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196,
                                     -0.422592998, 0, 0.906319618, 0, 1, 0,
                                     -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375,
                                   -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance", Vector3.new(-7894.6176757813,
                                                   5547.1416015625,
                                                   -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0,
                                     -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125,
                                   -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0,
                                     -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625,
                                   -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293,
                                     0.087131381, 0, 0.996196866, 0, 1, 0,
                                     -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094,
                                   3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293,
                                     0.087131381, 0, 0.996196866, 0, 1, 0,
                                     -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344,
                                   4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188,
                                     -0.22495985, 0, -0.974368095, 0, 1, 0,
                                     0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594,
                                   2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188,
                                     -0.22495985, 0, -0.974368095, 0, 1, 0,
                                     0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422,
                                   1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898,
                                     0.139203906, 0, 0.99026376, 0, 1, 0,
                                     -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812,
                                   1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321,
                                     -0.0319722369, 8.96074881e-10,
                                     -0.999488771, 1.36326533e-10, 1,
                                     8.92172336e-10, 0.999488771,
                                     -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516,
                                   -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812,
                                     0.866007268, 0, 0.500031412, 0, 1, 0,
                                     -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125,
                                   -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812,
                                     0.866007268, 0, 0.500031412, 0, 1, 0,
                                     -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578,
                                   -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061,
                                     -0.29242146, 0, -0.95628953, 0, 1, 0,
                                     0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453,
                                   -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061,
                                     -0.29242146, 0, -0.95628953, 0, 1, 0,
                                     0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078,
                                   -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928,
                                     -0.374604106, 0, 0.92718488, 0, 1, 0,
                                     -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594,
                                   -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928,
                                     -0.374604106, 0, 0.92718488, 0, 1, 0,
                                     -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906,
                                   -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852,
                                     0.453972578, -0, -0.891015649, 0, 1, -0,
                                     0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453,
                                   -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852,
                                     0.453972578, -0, -0.891015649, 0, 1, -0,
                                     0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703,
                                   -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457,
                                     -0.882952213, 0, 0.469463557, 0, 1, 0,
                                     -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172,
                                   -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457,
                                     -0.882952213, 0, 0.469463557, 0, 1, 0,
                                     -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711,
                                   -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625,
                                   33059.24609375)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance", Vector3.new(923.21252441406,
                                                   126.9760055542,
                                                   32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078,
                                   32779.96875)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance", Vector3.new(923.21252441406,
                                                   126.9760055542,
                                                   32852.83203125))
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938,
                                   33436.03515625)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance", Vector3.new(923.21252441406,
                                                   126.9760055542,
                                                   32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953,
                                   33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance", Vector3.new(923.21252441406,
                                                   126.9760055542,
                                                   32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984,
                                     -0.933587909, 0, -0.358349502, 0, 1, 0,
                                     0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945,
                                   -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance", Vector3.new(-6508.5581054688,
                                                   5000.034996032715,
                                                   -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984,
                                     -0.933587909, 0, -0.358349502, 0, 1, 0,
                                     0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266,
                                   -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193,
                                     0.990270376, -0, -0.13915664, 0, 1, -0,
                                     0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781,
                                   -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193,
                                     0.990270376, -0, -0.13915664, 0, 1, -0,
                                     0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375,
                                   -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984,
                                     0.965929627, -0, -0.258804798, 0, 1, -0,
                                     0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375,
                                   5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984,
                                     0.965929627, -0, -0.258804798, 0, 1, -0,
                                     0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703,
                                   6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563,
                                     0.898790359, -0, -0.438378751, 0, 1, -0,
                                     0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219,
                                   -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875,
                                     -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719,
                                   446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641,
                                     749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688,
                                   815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641,
                                     749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125,
                                   -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498,
                                     -0.965929747, 0, 0.258804798, 0, 1, 0,
                                     -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703,
                                   -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848,
                                     -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156,
                                   -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652,
                                     -0.882952213, 0, 0.469463557, 0, 1, 0,
                                     -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375,
                                   -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652,
                                     -0.882952213, 0, 0.469463557, 0, 1, 0,
                                     -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625,
                                   -9002.1103515625)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137,
                                     0.707134247, -0, -0.707079291, 0, 1, -0,
                                     0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469,
                                   -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137,
                                     0.707134247, -0, -0.707079291, 0, 1, -0,
                                     0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875,
                                   -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953,
                                     -0.0871315002, 0, 0.996196866, 0, 1, 0,
                                     -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125,
                                   -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953,
                                     -0.0871315002, 0, 0.996196866, 0, 1, 0,
                                     -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875,
                                   -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0,
                                     1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938,
                                   6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0,
                                     1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688,
                                   5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0,
                                     -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938,
                                   6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0,
                                     -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725,
                                   6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232,
                                     -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125,
                                   -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232,
                                     -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883,
                                   -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363,
                                     -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0,
                                     0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047,
                                   -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363,
                                     -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0,
                                     0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703,
                                   -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295,
                                     0.957576931, -8.80302053e-08, 0.288177818,
                                     6.9301187e-08, 1, 7.51931211e-08,
                                     -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469,
                                   -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295,
                                     0.957576931, -8.80302053e-08, 0.288177818,
                                     6.9301187e-08, 1, 7.51931211e-08,
                                     -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266,
                                   -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391,
                                     -0.96804446, 4.22142143e-08, 0.250778586,
                                     4.74911062e-08, 1, 1.49904711e-08,
                                     -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539,
                                   -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391,
                                     -0.96804446, 4.22142143e-08, 0.250778586,
                                     4.74911062e-08, 1, 1.49904711e-08,
                                     -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375,
                                   -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227,
                                     -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219,
                                   -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227,
                                     -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344,
                                   -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742,
                                     -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406,
                                   -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742,
                                     -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625,
                                   -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492,
                                     -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055,
                                   -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492,
                                     -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234,
                                   -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMon = CFrame.new(-16120.6035, 116.520554, -103.038849)
        elseif MyLevel == 2475 or MyLevel <= 2524 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16545.9355, 55.6863556, -173.230499)
            CFrameMon = CFrame.new(-16751.3125, 121.226219, -264.015015)
        elseif MyLevel >= 2525 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945,
                                     1051.5738525390625)
            CFrameMon = CFrame.new(-16933.2129, 93.3503036, 999.450989)
        end
    end
end

function CheckBossQuest()
    if First_Sea then
        if SelectBoss == "The Gorilla King" then
            BossMon = "The Gorilla King"
            NameBoss = 'The Gorrila King'
            NameQuestBoss = "JungleQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$2,000\n7,000 Exp."
            CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0,
                -0.707079291, 0, -0.707134247)
        elseif SelectBoss == "Bobby" then
            BossMon = "Bobby"
            NameBoss = 'Bobby'
            NameQuestBoss = "BuggyQuest1"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$8,000\n35,000 Exp."
            CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
        elseif SelectBoss == "The Saw" then
            BossMon = "The Saw"
            NameBoss = 'The Saw'
            CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
        elseif SelectBoss == "Yeti" then
            BossMon = "Yeti"
            NameBoss = 'Yeti'
            NameQuestBoss = "SnowQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif SelectBoss == "Mob Leader" then
            BossMon = "Mob Leader"
            NameBoss = 'Mob Leader'
            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
        elseif SelectBoss == "Vice Admiral" then
            BossMon = "Vice Admiral"
            NameBoss = 'Vice Admiral'
            NameQuestBoss = "MarineQuest2"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
            CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
        elseif SelectBoss == "Saber Expert" then
            NameBoss = 'Saber Expert'
            BossMon = "Saber Expert"
            CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
        elseif SelectBoss == "Warden" then
            BossMon = "Warden"
            NameBoss = 'Warden'
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 1
            RewardBoss = "Reward:\n$6,000\n850,000 Exp."
            CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427,
                -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                -0.681965172, 0, -0.731384635)
        elseif SelectBoss == "Chief Warden" then
            BossMon = "Chief Warden"
            NameBoss = 'Chief Warden'
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749,
                0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                -0.681965172, 0, -0.731384635)
        elseif SelectBoss == "Swan" then
            BossMon = "Swan"
            NameBoss = 'Swan'
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
            CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0,
                -0.951042235, 0, -0.309060812)
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                -0.681965172, 0, -0.731384635)
        elseif SelectBoss == "Magma Admiral" then
            BossMon = "Magma Admiral"
            NameBoss = 'Magma Admiral'
            NameQuestBoss = "MagmaQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
            CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
            CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
        elseif SelectBoss == "Fishman Lord" then
            BossMon = "Fishman Lord"
            NameBoss = 'Fishman Lord'
            NameQuestBoss = "FishmanQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
        elseif SelectBoss == "Wysper" then
            BossMon = "Wysper"
            NameBoss = 'Wysper'
            NameQuestBoss = "SkyExp1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
            CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
        elseif SelectBoss == "Thunder God" then
            BossMon = "Thunder God"
            NameBoss = 'Thunder God'
            NameQuestBoss = "SkyExp2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
            CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
        elseif SelectBoss == "Cyborg" then
            BossMon = "Cyborg"
            NameBoss = 'Cyborg'
            NameQuestBoss = "FountainQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
            CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
        elseif SelectBoss == "Ice Admiral" then
            BossMon = "Ice Admiral"
            NameBoss = 'Ice Admiral'
            CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0,
                0.81913656, 0, -0.573599219)
        elseif SelectBoss == "Greybeard" then
            BossMon = "Greybeard"
            NameBoss = 'Greybeard'
            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
        end
    end
    if Second_Sea then
        if SelectBoss == "Diamond" then
            BossMon = "Diamond"
            NameBoss = 'Diamond'
            NameQuestBoss = "Area1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
            CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
        elseif SelectBoss == "Jeremy" then
            BossMon = "Jeremy"
            NameBoss = 'Jeremy'
            NameQuestBoss = "Area2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
            CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
            CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
        elseif SelectBoss == "Fajita" then
            BossMon = "Fajita"
            NameBoss = 'Fajita'
            NameQuestBoss = "MarineQuest3"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
            CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
            CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
        elseif SelectBoss == "Don Swan" then
            BossMon = "Don Swan"
            NameBoss = 'Don Swan'
            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
        elseif SelectBoss == "Smoke Admiral" then
            BossMon = "Smoke Admiral"
            NameBoss = 'Smoke Admiral'
            NameQuestBoss = "IceSideQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
            CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
        elseif SelectBoss == "Awakened Ice Admiral" then
            BossMon = "Awakened Ice Admiral"
            NameBoss = 'Awakened Ice Admiral'
            NameQuestBoss = "FrostQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
            CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
            CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
        elseif SelectBoss == "Tide Keeper" then
            BossMon = "Tide Keeper"
            NameBoss = 'Tide Keeper'
            NameQuestBoss = "ForgottenQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
            CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
            CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
        elseif SelectBoss == "Darkbeard" then
            BossMon = "Darkbeard"
            NameBoss = 'Darkbeard'
            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
        elseif SelectBoss == "Cursed Captain" then
            BossMon = "Cursed Captain"
            NameBoss = 'Cursed Captain'
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
        elseif SelectBoss == "Order" then
            BossMon = "Order"
            NameBoss = 'Order'
            CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
        end
    end
    if Third_Sea then
        if SelectBoss == "Stone" then
            BossMon = "Stone"
            NameBoss = 'Stone'
            NameQuestBoss = "PiratePortQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
            CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
            CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
        elseif SelectBoss == "Island Empress" then
            BossMon = "Island Empress"
            NameBoss = 'Island Empress'
            NameQuestBoss = "AmazonQuest2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
            CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
            CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
        elseif SelectBoss == "Kilo Admiral" then
            BossMon = "Kilo Admiral"
            NameBoss = 'Kilo Admiral'
            NameQuestBoss = "MarineTreeIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
            CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
            CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
        elseif SelectBoss == "Captain Elephant" then
            BossMon = "Captain Elephant"
            NameBoss = 'Captain Elephant'
            NameQuestBoss = "DeepForestIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
            CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
            CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
        elseif SelectBoss == "Beautiful Pirate" then
            BossMon = "Beautiful Pirate"
            NameBoss = 'Beautiful Pirate'
            NameQuestBoss = "DeepForestIsland2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
            CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
        elseif SelectBoss == "Cake Queen" then
            BossMon = "Cake Queen"
            NameBoss = 'Cake Queen'
            NameQuestBoss = "IceCreamIslandQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
            CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                -0.642767608, 0, -0.766061664)
            CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378,
                0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
        elseif SelectBoss == "Longma" then
            BossMon = "Longma"
            NameBoss = 'Longma'
            CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
        elseif SelectBoss == "Soul Reaper" then
            BossMon = "Soul Reaper"
            NameBoss = 'Soul Reaper'
            CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
        elseif SelectBoss == "rip_indra True Form" then
            BossMon = "rip_indra True Form"
            NameBoss = 'rip_indra True Form'
            CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
        end
    end
end

function MaterialMon()
    if SelectMaterial == "Radioactive Material" then
        MMon = "Factory Staff"
        MPos = CFrame.new(295, 73, -56)
        SP = "Default"
    elseif SelectMaterial == "Mystic Droplet" then
        MMon = "Water Fighter"
        MPos = CFrame.new(-3385, 239, -10542)
        SP = "Default"
    elseif SelectMaterial == "Magma Ore" then
        if First_Sea then
            MMon = "Military Spy"
            MPos = CFrame.new(-5815, 84, 8820)
            SP = "Default"
        elseif Second_Sea then
            MMon = "Magma Ninja"
            MPos = CFrame.new(-5428, 78, -5959)
            SP = "Default"
        end
    elseif SelectMaterial == "Angel Wings" then
        MMon = "God's Guard"
        MPos = CFrame.new(-4698, 845, -1912)
        SP = "Default"
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
            Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -7859.09814, 5544.19043, -381.476196))
        end
    elseif SelectMaterial == "Leather" then
        if First_Sea then
            MMon = "Brute"
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif Second_Sea then
            MMon = "Marine Captain"
            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
            SP = "Default"
        elseif Third_Sea then
            MMon = "Jungle Pirate"
            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
            SP = "Default"
        end
    elseif SelectMaterial == "Scrap Metal" then
        if First_Sea then
            MMon = "Brute"
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif Second_Sea then
            MMon = "Swan Pirate"
            MPos = CFrame.new(878, 122, 1235)
            SP = "Default"
        elseif Third_Sea then
            MMon = "Jungle Pirate"
            MPos = CFrame.new(-12107, 332, -10549)
            SP = "Default"
        end
    elseif SelectMaterial == "Fish Tail" then
        if Third_Sea then
            MMon = "Fishman Raider"
            MPos = CFrame.new(-10993, 332, -8940)
            SP = "Default"
        elseif First_Sea then
            MMon = "Fishman Warrior"
            MPos = CFrame.new(61123, 19, 1569)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                    61163.8515625, 5.342342376708984, 1819.7841796875))
            end
        end
    elseif SelectMaterial == "Demonic Wisp" then
        MMon = "Demonic Soul"
        MPos = CFrame.new(-9507, 172, 6158)
        SP = "Default"
    elseif SelectMaterial == "Vampire Fang" then
        MMon = "Vampire"
        MPos = CFrame.new(-6033, 7, -1317)
        SP = "Default"
    elseif SelectMaterial == "Conjured Cocoa" then
        MMon = "Chocolate Bar Battler"
        MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
        SP = "Default"
    elseif SelectMaterial == "Dragon Scale" then
        MMon = "Dragon Crew Archer"
        MPos = CFrame.new(6594, 383, 139)
        SP = "Default"
    elseif SelectMaterial == "Gunpowder" then
        MMon = "Pistol Billionaire"
        MPos = CFrame.new(-469, 74, 5904)
        SP = "Default"
    elseif SelectMaterial == "Mini Tusk" then
        MMon = "Mythological Pirate"
        MPos = CFrame.new(-13545, 470, -6917)
        SP = "Default"
    end
end



----// Tween & Check Item \\---------------------------------------------------------
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet(
                                                   'https://games.roblox.com/v1/games/' ..
                                                       PlaceID ..
                                                       '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet(
                                                   'https://games.roblox.com/v1/games/' ..
                                                       PlaceID ..
                                                       '/servers/Public?sortOrder=Asc&limit=100&cursor=' ..
                                                       foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and
            Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService")
                            :TeleportToPlaceInstance(PlaceID, ID,
                                                     game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then TPReturner() end
            end)
        end
    end
    Teleport()
end

function UpdateIslandESP()
    for i, v in pairs(
                    game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text =
                            (v.Name .. '   \n' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing) return (thing == nil) end
local function round(n) return math.floor(tonumber(n) + 0.5) end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
    for i, v in pairs(game:GetService 'Players':GetChildren()) do
        pcall(function()
            if not isnil(v.Character) then
                if ESPPlayer then
                    if not isnil(v.Character.Head) and
                        not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui',
                                                  v.Character.Head)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Character.Head.Position).Magnitude /
                                                3) .. ' Distance')
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Team == game.Players.LocalPlayer.Team then
                            name.TextColor3 = Color3.new(0, 255, 0)
                        else
                            name.TextColor3 = Color3.new(255, 0, 0)
                        end
                    else
                        v.Character.Head['NameEsp' .. Number].TextLabel.Text =
                            (v.Name .. ' | ' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position -
                                        v.Character.Head.Position).Magnitude / 3) ..
                                ' Distance\nHealth : ' ..
                                round(
                                    v.Character.Humanoid.Health * 100 /
                                        v.Character.Humanoid.MaxHealth) .. '%')
                    end
                else
                    if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        v.Character.Head:FindFirstChild('NameEsp' .. Number)
                            :Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateChestChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v.Name, "Chest") then
                if ChestESP then
                    if string.find(v.Name, "Chest") then
                        if not v:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Name == "Chest1" then
                                name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                name.Text =
                                    ("Chest 1" .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Position).Magnitude / 3) ..
                                        ' Distance')
                            end
                            if v.Name == "Chest2" then
                                name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                name.Text =
                                    ("Chest 2" .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Position).Magnitude / 3) ..
                                        ' Distance')
                            end
                            if v.Name == "Chest3" then
                                name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                name.Text =
                                    ("Chest 3" .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Position).Magnitude / 3) ..
                                        ' Distance')
                            end
                        else
                            v['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                        '   \n' ..
                                                                        round(
                                                                            (game:GetService(
                                                                                'Players').LocalPlayer
                                                                                .Character
                                                                                .Head
                                                                                .Position -
                                                                                v.Position).Magnitude /
                                                                                3) ..
                                                                        ' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateDevilChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Handle.Position).Magnitude / 3) ..
                                        ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text =
                            (v.Name .. '   \n' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position -
                                        v.Handle.Position).Magnitude / 3) ..
                                ' Distance')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateFlowerChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if v.Name == "Flower2" or v.Name == "Flower1" then
                if FlowerESP then
                    if not v:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then
                            name.Text = ("Blue Flower" .. ' \n' ..
                                            round(
                                                (game:GetService('Players').LocalPlayer
                                                    .Character.Head.Position -
                                                    v.Position).Magnitude / 3) ..
                                            ' Distance')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" .. ' \n' ..
                                            round(
                                                (game:GetService('Players').LocalPlayer
                                                    .Character.Head.Position -
                                                    v.Position).Magnitude / 3) ..
                                            ' Distance')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                    '   \n' ..
                                                                    round(
                                                                        (game:GetService(
                                                                            'Players').LocalPlayer
                                                                            .Character
                                                                            .Head
                                                                            .Position -
                                                                            v.Position).Magnitude /
                                                                            3) ..
                                                                    ' Distance')
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text = (v.Name .. ' \n' ..
                                    round(
                                        (game:GetService('Players').LocalPlayer
                                            .Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3) ..
                                    ' Distance')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                       ' ' ..
                                                                       round(
                                                                           (game:GetService(
                                                                               'Players').LocalPlayer
                                                                               .Character
                                                                               .Head
                                                                               .Position -
                                                                               v.Handle
                                                                                   .Position).Magnitude /
                                                                               3) ..
                                                                       ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text = (v.Name .. ' \n' ..
                                    round(
                                        (game:GetService('Players').LocalPlayer
                                            .Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3) ..
                                    ' Distance')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                       ' ' ..
                                                                       round(
                                                                           (game:GetService(
                                                                               'Players').LocalPlayer
                                                                               .Character
                                                                               .Head
                                                                               .Position -
                                                                               v.Handle
                                                                                   .Position).Magnitude /
                                                                               3) ..
                                                                       ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text = (v.Name .. ' \n' ..
                                    round(
                                        (game:GetService('Players').LocalPlayer
                                            .Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3) ..
                                    ' Distance')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                       ' ' ..
                                                                       round(
                                                                           (game:GetService(
                                                                               'Players').LocalPlayer
                                                                               .Character
                                                                               .Head
                                                                               .Position -
                                                                               v.Handle
                                                                                   .Position).Magnitude /
                                                                               3) ..
                                                                       ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
end

function UpdateIslandESP()
    for i, v in pairs(
                    game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text =
                            (v.Name .. '   \n' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing) return (thing == nil) end
local function round(n) return math.floor(tonumber(n) + 0.5) end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
    for i, v in pairs(game:GetService 'Players':GetChildren()) do
        pcall(function()
            if not isnil(v.Character) then
                if ESPPlayer then
                    if not isnil(v.Character.Head) and
                        not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui',
                                                  v.Character.Head)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Character.Head.Position).Magnitude /
                                                3) .. ' Distance')
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Team == game.Players.LocalPlayer.Team then
                            name.TextColor3 = Color3.new(0, 255, 0)
                        else
                            name.TextColor3 = Color3.new(255, 0, 0)
                        end
                    else
                        v.Character.Head['NameEsp' .. Number].TextLabel.Text =
                            (v.Name .. ' | ' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position -
                                        v.Character.Head.Position).Magnitude / 3) ..
                                ' Distance\nHealth : ' ..
                                round(
                                    v.Character.Humanoid.Health * 100 /
                                        v.Character.Humanoid.MaxHealth) .. '%')
                    end
                else
                    if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        v.Character.Head:FindFirstChild('NameEsp' .. Number)
                            :Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateChestChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v.Name, "Chest") then
                if ChestESP then
                    if string.find(v.Name, "Chest") then
                        if not v:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Name == "Chest1" then
                                name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                name.Text =
                                    ("Chest 1" .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Position).Magnitude / 3) ..
                                        ' Distance')
                            end
                            if v.Name == "Chest2" then
                                name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                name.Text =
                                    ("Chest 2" .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Position).Magnitude / 3) ..
                                        ' Distance')
                            end
                            if v.Name == "Chest3" then
                                name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                name.Text =
                                    ("Chest 3" .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Position).Magnitude / 3) ..
                                        ' Distance')
                            end
                        else
                            v['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                        '   \n' ..
                                                                        round(
                                                                            (game:GetService(
                                                                                'Players').LocalPlayer
                                                                                .Character
                                                                                .Head
                                                                                .Position -
                                                                                v.Position).Magnitude /
                                                                                3) ..
                                                                        ' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateDevilChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                            (game:GetService('Players').LocalPlayer
                                                .Character.Head.Position -
                                                v.Handle.Position).Magnitude / 3) ..
                                        ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text =
                            (v.Name .. '   \n' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position -
                                        v.Handle.Position).Magnitude / 3) ..
                                ' Distance')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateFlowerChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if v.Name == "Flower2" or v.Name == "Flower1" then
                if FlowerESP then
                    if not v:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then
                            name.Text = ("Blue Flower" .. ' \n' ..
                                            round(
                                                (game:GetService('Players').LocalPlayer
                                                    .Character.Head.Position -
                                                    v.Position).Magnitude / 3) ..
                                            ' Distance')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" .. ' \n' ..
                                            round(
                                                (game:GetService('Players').LocalPlayer
                                                    .Character.Head.Position -
                                                    v.Position).Magnitude / 3) ..
                                            ' Distance')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                    '   \n' ..
                                                                    round(
                                                                        (game:GetService(
                                                                            'Players').LocalPlayer
                                                                            .Character
                                                                            .Head
                                                                            .Position -
                                                                            v.Position).Magnitude /
                                                                            3) ..
                                                                    ' Distance')
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    name.Text = (v.Name .. ' \n' ..
                                    round(
                                        (game:GetService('Players').LocalPlayer
                                            .Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3) ..
                                    ' Distance')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                       ' ' ..
                                                                       round(
                                                                           (game:GetService(
                                                                               'Players').LocalPlayer
                                                                               .Character
                                                                               .Head
                                                                               .Position -
                                                                               v.Handle
                                                                                   .Position).Magnitude /
                                                                               3) ..
                                                                       ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 174, 0)
                    name.Text = (v.Name .. ' \n' ..
                                    round(
                                        (game:GetService('Players').LocalPlayer
                                            .Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3) ..
                                    ' Distance')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                       ' ' ..
                                                                       round(
                                                                           (game:GetService(
                                                                               'Players').LocalPlayer
                                                                               .Character
                                                                               .Head
                                                                               .Position -
                                                                               v.Handle
                                                                                   .Position).Magnitude /
                                                                               3) ..
                                                                       ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
    for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v:IsA("Tool") then
            if RealFruitESP then
                if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                    local bill = Instance.new('BillboardGui', v.Handle)
                    bill.Name = 'NameEsp' .. Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1, 200, 1, 30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel', bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1, 0, 1, 0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(251, 255, 0)
                    name.Text = (v.Name .. ' \n' ..
                                    round(
                                        (game:GetService('Players').LocalPlayer
                                            .Character.Head.Position -
                                            v.Handle.Position).Magnitude / 3) ..
                                    ' Distance')
                else
                    v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name ..
                                                                       ' ' ..
                                                                       round(
                                                                           (game:GetService(
                                                                               'Players').LocalPlayer
                                                                               .Character
                                                                               .Head
                                                                               .Position -
                                                                               v.Handle
                                                                                   .Position).Magnitude /
                                                                               3) ..
                                                                       ' Distance')
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i, v in pairs(
                                game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior
                                                              .Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255,
                                                                        255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor(
                                        (game.Players.LocalPlayer.Character
                                            .HumanoidRootPart.Position -
                                            v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text =
                            v.Name .. " - " .. Dis .. " Distance"
                    end
                end
            else
                for i, v in pairs(
                                game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i, v in pairs(
                                game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior
                                                              .Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255,
                                                                        255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor(
                                        (game.Players.LocalPlayer.Character
                                            .HumanoidRootPart.Position -
                                            v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text =
                            v.Name .. " - " .. Dis .. " Distance"
                    end
                end
            else
                for i, v in pairs(
                                game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i, v in pairs(
                                game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior
                                                              .Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255,
                                                                        255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor(
                                        (game.Players.LocalPlayer.Character
                                            .HumanoidRootPart.Position -
                                            v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text =
                            v.Name .. " - " .. Dis .. " Distance"
                    end
                end
            else
                for i, v in pairs(
                                game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

function isnil(thing) return (thing == nil) end
local function round(n) return math.floor(tonumber(n) + 0.5) end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP()
    for i, v in pairs(
                    game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then
                if v.Name == "Mirage Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text =
                            (v.Name .. '   \n' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing) return (thing == nil) end
local function round(n) return math.floor(tonumber(n) + 0.5) end
Number = math.random(1, 1000000)

function UpdateAfdESP()
    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AfdESP then
                if v.Name == "Advanced Fruit Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text =
                            (v.Name .. '   \n' ..
                                round(
                                    (game:GetService('Players').LocalPlayer
                                        .Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
            "Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0, 0, 0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0, 0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4)
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0, 0, 0, 0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0),
                                          Color3.fromRGB(0, 0, 0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character
                             .HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
            "Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                "Agility"):Destroy()
        end
    end
end

local LocalPlayer = game:GetService 'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end
    end)
end

spawn(function()
    pcall(function()
        while wait(.1) do
            if InfiniteEnergy then
                wait(0.1)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        for i, v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script ==
                    game:GetService("Players").LocalPlayer.Character.Dodge then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not nododgecool
                        end
                    end
                end
            end
        end
    end
end

function fly()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse ''
    localplayer = game:GetService("Players").LocalPlayer
    game:GetService("Players").LocalPlayer.Character:WaitForChild(
        "HumanoidRootPart")
    local torso = game:GetService("Players").LocalPlayer.Character
                      .HumanoidRootPart
    local speedSET = 25
    local keys = {a = false, d = false, w = false, s = false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition", torso)
        local gyro = Instance.new("BodyGyro", torso)
        pos.Name = "EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.CFrame = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand = true
            local new = gyro.CFrame - gyro.CFrame.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed = 1
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector *
                          speed
                speed = speed + speedSET
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector *
                          speed
                speed = speed + speedSET
            end
            if keys.d then
                new = new * CFrame.new(speed, 0, 0)
                speed = speed + speedSET
            end
            if keys.a then
                new = new * CFrame.new(-speed, 0, 0)
                speed = speed + speedSET
            end
            if speed > speedSET then speed = speedSET end
            pos.position = new.p
            if keys.w then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame *
                                  CFrame.Angles(-math.rad(speed * 15), 0, 0)
            elseif keys.s then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame *
                                  CFrame.Angles(math.rad(speed * 15), 0, 0)
            else
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
        until not Fly
        if gyro then gyro:Destroy() end
        if pos then pos:Destroy() end
        flying = false
        localplayer.Character.Humanoid.PlatformStand = false
        speed = 0
    end
    e1 = mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then
            flying = false
            e1:disconnect()
            e2:disconnect()
            return
        end
        if key == "w" then
            keys.w = true
        elseif key == "s" then
            keys.s = true
        elseif key == "a" then
            keys.a = true
        elseif key == "d" then
            keys.d = true
        end
    end)
    e2 = mouse.KeyUp:connect(function(key)
        if key == "w" then
            keys.w = false
        elseif key == "s" then
            keys.s = false
        elseif key == "a" then
            keys.a = false
        elseif key == "d" then
            keys.d = false
        end
    end)
    start()
end

function Click()
    game:GetService 'VirtualUser':CaptureController()
    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(
        "HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent =
            game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

-- function tween
function toTarget(...)
    local RealtargetPos = {...}
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
        if tween then
            tween:Cancel()
        end
        repeat
            wait()
        until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0;
        wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position -
                         game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
    if Distance < 1000 then
        Speed = 320
    elseif Distance >= 1000 then
        Speed = 290
    end
    if BypassTP then
        if Distance > 3000 and not AutoNextIsland and
            not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or
                game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or
                game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or
                game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
                game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and
            not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value ==
                    tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value ==
                    tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    wait(0.1)
                    repeat
                        wait()
                    until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    repeat
                        wait()
                    until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    wait(.1)
                    Com("F_", "SetSpawnPoint")
                end
                wait(0.2)

                return
            end)
        end
    end

    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((RealTarget.Position -
                                   game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                       .Position).Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
            CFrame = RealTarget
        })
        tween:Play()
    end)

    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end

function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear), {
                CFrame = Pos
            })
    end)
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end

function toTargetP(CFgo)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
        not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(7)
        return
    end
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
        pcall(function()
            tween:Cancel()

            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

            return
        end)
    end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                                   CFgo.Position).Magnitude / 325, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
        CFrame = CFgo
    })
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

function TweenShip(CFgo)
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position -
                                   CFgo.Position).Magnitude / 300, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {
        CFrame = CFgo
    })
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

function TweenBoat(CFgo)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
        not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
        wait(7)
        return
    end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                                   CFgo.Position).Magnitude / 325, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
        CFrame = CFgo
    })
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

    

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

spawn(function()
    while wait() do
        for i, v in pairs(
                        game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
            pcall(function()
                if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name ==
                    ("SwordSlash") or v.Name == ("SlashTail") or v.Name ==
                    ("Sounds") then v:Destroy() end
            end)
        end
    end
end)

function GetDistance(target)
    return math.floor((target.Position -
                          game.Players.LocalPlayer.Character.HumanoidRootPart
                              .Position).Magnitude)
end

function BTP(P)
    repeat
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position -
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
        1500
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
    Distance = (Pos.Position -
                   game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 10000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 750 then
        Speed = 275
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {CFrame = Pos})
        :Play()
end

function TP1(Pos)
    Distance = (Pos.Position -
                   game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 275
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {CFrame = Pos})
        :Play()
end

function topos(Pos)
    Distance = (Pos.Position -
                   game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 275
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {CFrame = Pos})
        :Play()
end

function TPB(CFgo)
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
                     (game:GetService("Workspace").Boats.MarineBrigade
                         .VehicleSeat.CFrame.Position - CFgo.Position).Magnitude /
                         300, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade
                               .VehicleSeat, info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop() tween:Cancel() end

    return tweenfunc
end

function TPP(CFgo)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
        not game:GetService("Players").LocalPlayer.Character:WaitForChild(
            "Humanoid") then
        tween:Cancel()
        repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild(
            "Humanoid") and
            game:GetService("Players").LocalPlayer.Character:WaitForChild(
                "Humanoid").Health > 0
        wait(7)
        return
    end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"]
                                   .Character.HumanoidRootPart.Position -
                                   CFgo.Position).Magnitude / 325,
                               Enum.EasingStyle.Linear)
    tween = tween_s:Create(
                game.Players.LocalPlayer.Character["HumanoidRootPart"], info,
                {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop() tween:Cancel() end

    return tweenfunc
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(
                p.Position) <= 250 then
                game:GetService("Players").LocalPlayer.Character
                    .HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                local K = Instance.new("Part",
                                       game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1, 0.5, 1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart
                               .CFrame * CFrame.new(0, 20, 0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart
                          .Position - p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position -
                                        game.Players.LocalPlayer.Character.Root
                                            .Position).Magnitude / 300,
                                    Enum.EasingStyle.Linear)
            local S, g = pcall(function()
                local q = z:Create(game.Players.LocalPlayer.Character.Root, B,
                                   {CFrame = p})
                q:Play()
            end)
            if not S then return g end
            game.Players.LocalPlayer.Character.Root.CFrame = game.Players
                                                                 .LocalPlayer
                                                                 .Character
                                                                 .HumanoidRootPart
                                                                 .CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart
                        .Position - p.Position).Magnitude >= 20 then
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root
                                    .Position -
                                    game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position).Magnitude >
                                    150 then
                                    game.Players.LocalPlayer.Character.Root
                                        .CFrame =
                                        game.Players.LocalPlayer.Character
                                            .HumanoidRootPart.CFrame
                                else
                                    game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.CFrame = game.Players
                                                                       .LocalPlayer
                                                                       .Character
                                                                       .Root
                                                                       .CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart
                        .Position - p.Position).Magnitude >= 10 and
                        (game.Players.LocalPlayer.Character.HumanoidRootPart
                            .Position - p.Position).Magnitude < 20 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart
                        .Position - p.Position).Magnitude < 10 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = p
                    end
                end)
            end
        end)
    end)
end

Type = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(0, PosY, 0)
        elseif Type == 2 then
            Pos = CFrame.new(0, PosY, -30)
        elseif Type == 3 then
            Pos = CFrame.new(30, PosY, 0)
        elseif Type == 4 then
            Pos = CFrame.new(0, PosY, 30)
        elseif Type == 5 then
            Pos = CFrame.new(-30, PosY, 0)
        elseif Type == 6 then
            Pos = CFrame.new(0, 35, 0)
        end
    end
end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.5)
        Type = 2
        wait(0.5)
        Type = 3
        wait(0.5)
        Type = 4
        wait(0.5)
        Type = 5
        wait(0.5)
    end
end)

spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text
                if not string.find(QuestTitle, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude >
                            1500 then
                            BTP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <
                            1500 then
                            topos(CFrameQuest)
                        end
                    else
                        topos(CFrameQuest)
                    end
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <=
                        20 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,
                            LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                            .Title.Text, NameMon) then
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                            StartMagnet = true
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame *
                                    CFrame.new(0, 20, 0))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "CakePrinceSpawner"), 39, 41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) ==
                87 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "CakePrinceSpawner"), 40, 41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) ==
                86 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "CakePrinceSpawner"), 41, 41)) - 500)
            end
        end)
    end
end)

local PosCake = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
local PosDought = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
spawn(function()
    while wait() do
        if _G.AutoDoughtBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        topos(
                            game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame *
                                CFrame.new(2, 20, 2))
                    else
                        if KillMob == 0 then
                        end
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or
                                        v.Name == "Head Baker" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                MagnetDought = true
                                                PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or
                                                game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency ==
                                                0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or
                                                KillMob == 0
                                        end
                                    end
                                end
                            else
                                MagnetDought = false
                                if BypassTP then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosCake.Position).Magnitude >
                                        1500 then
                                        BTP(PosCake)
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        PosCake.Position).Magnitude < 1500 then
                                        topos(PosCake)
                                    end
                                else
                                    topos(PosCake)
                                end
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart
                                            .CFrame * CFrame.new(2, 20, 2))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        topos(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart
                                                .CFrame * CFrame.new(2, 20, 2))
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            topos(
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart
                                                    .CFrame * CFrame.new(2, 20, 2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                topos(
                                                    game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart
                                                        .CFrame * CFrame.new(2, 20, 2))
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince")
                                          .HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                    topos(
                                        game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart
                                            .CFrame * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local PosBone = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
spawn(function()
    while wait() do
        if _G.BoneFarming then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or
                            v.Name == "Posessed Mummy" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                    StartCheckBone = true
                                    PosMonBone = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until v.Humanoid.Health <= 0 or not _G.BoneFarming or not v.Parent
                            end
                        end
                    end
                else
                    StartCheckBone = false
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosBone.Position).Magnitude >
                            1500 then
                            BTP(PosBone)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PosBone.Position).Magnitude <
                            1500 then
                            topos(PosBone)
                        end
                    else
                        topos(PosBone)
                    end
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif v.Name == "Living Zombie" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif v.Name == "Demonic Soul" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif v.Name == "Posessed Mummy" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.BringMonster then
                CheckQuest()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarm and StartMagnet and v.Name == Mon and
                        (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon ==
                            "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and
                        (v.HumanoidRootPart.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and
                        (v.HumanoidRootPart.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                        _G.BringMode then
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if _G.BringMonster then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.BoneFarming and StartCheckBone then
                        if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or
                            v.Name == "Posessed Mummy") and
                            (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and
                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >
                            0 then
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoDoughtBoss and MagnetDought then
                        if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name ==
                            "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <=
                            _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0 then
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoKillElite and World3 then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text, "Diablo") or
                        string.find(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Deandre") or
                        string.find(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,
                                                "SimulationRadius", math.huge)
                                        until _G.AutoKillElite == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart
                                          .CFrame * CFrame.new(2, 20, 2))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart
                                          .CFrame * CFrame.new(2, 20, 2))
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart
                                          .CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                else
                    if _G.HuntingElite and
                        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") ==
                        "I don't have anything for you right now. Come back later." then
                        hop()
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.KillShark then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Shark" then
                            if _G.KillShark and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and
                                v.Parent then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    Fastattack = true ----// ehehehehehheeh \\--------------
                                    Click()
                                until not _G.KillShark or v.Humanoid.Health < 0 or
                                    not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                Fastattack = false
                            end
                        end
                    end
                else
                    topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Shark" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.KillTerrorShark then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Terrorshark" then
                            if _G.KillTerrorShark and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and
                                v.Parent then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    Fastattack = true ----// ehehehehehheeh \\--------------
                                    Click()
                                until not _G.KillTerrorShark or v.Humanoid.Health < 0 or
                                    not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                Fastattack = false
                            end
                        end
                    end
                else
                    topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Terrorshark" then
                            if plr.Character.Humanoid.Health >= 3000 then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif plr.Character.Humanoid.Health <= 3000 then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 99, 2))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.KillSea then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Terrorshark" or v.Name == "Fish Crew Member" or v.Name == "Shark" or v.Name ==
                            "Piranha" then
                            if _G.KillSea and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and
                                v.Parent then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    Fastattack = true ----// ehehehehehheeh \\--------------
                                    Click()
                                until not _G.KillSea or v.Humanoid.Health < 0 or
                                    not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                Fastattack = false
                            end
                        end
                    end
                else
                    topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Terrorshark" then
                            if plr.Character.Humanoid.Health >= 3000 then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif plr.Character.Humanoid.Health <= 3000 then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 99, 2))
                            elseif v.Name == "Fish Crew Member" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif v.Name == "Shark" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif v.Name == "Piranha" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.KillFishCrew then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Fish Crew Member" then
                            if _G.KillFishCrew and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and
                                v.Parent then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    Fastattack = true ----// ehehehehehheeh \\--------------
                                    Click()
                                until not _G.KillFishCrew or v.Humanoid.Health < 0 or
                                    not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                Fastattack = false
                            end
                        end
                    end
                else
                    topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Fish Crew Member" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.KillPiranha then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Piranha" then
                            if _G.KillPiranha and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and
                                v.Parent then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    Fastattack = true ----// ehehehehehheeh \\--------------
                                    Click()
                                until not _G.KillPiranha or v.Humanoid.Health < 0 or
                                    not v:FindFirstChild("HumanoidRootPart") or not v.Parent
                                Fastattack = false
                            end
                        end
                    end
                else
                    topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Piranha" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Zone6 then
            pcall(function()
                for i, v in pairs(game.Workspace.Boats:GetChildren()) do
                    if v:FindFirstChild("Owner") then
                        if v:FindFirstChild("Owner").Value == plr then
                            if v:FindFirstChild("VehicleSeat") then
                                v:FindFirstChild("VehicleSeat").CFrame = CFrame.new(-44842.3945, 10.7790766, 16911.3477)
                                wait(1.0)
                                topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
                                          CFrame.new(0, 3, 0))
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.BiirTrax then
                for _, v in next, workspace.Boats.PirateBrigade:GetDescendants() do
                    if v.Name:find("VehicleSeat") then
                        wait(5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        break
                    end
                end

                local vehicleSeat = nil
                local enemyTypes = {{
                    name = "Terrorshark",
                    variable = "bjirTerrorshark"
                }, {
                    name = "Shark",
                    variable = "bjirShark"
                }, {
                    name = "Piranha",
                    variable = "bjirPiranha"
                }, {
                    name = "FishBoat",
                    variable = "bjirFishBoat"
                }}

                for _, v in next, workspace.Boats.PirateBrigade:GetDescendants() do
                    if v.Name:find("VehicleSeat") then
                        vehicleSeat = v
                        wait(0.2)

                        for _, enemyType in pairs(enemyTypes) do
                            local enemyName = enemyType.name
                            local enemyVariable = enemyType.variable

                            if game:GetService("Workspace").Enemies:FindFirstChild(enemyName) then
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                wait(0.1)
                                _G[enemyVariable] = true

                                -- Menunggu musuh mati
                                while game:GetService("Workspace").Enemies:FindFirstChild(enemyName) do
                                    wait(0.2)
                                end

                                _G[enemyVariable] = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vehicleSeat.CFrame
                            end
                        end

                        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                            _G.BiirTrax = false
                            wait(0.5)
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            wait(0.5)
                            _G.BjirFrozenCuy = true
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.BiirTrax then
                local batuLaut = {"SmallGroup", "SmallCluster", "MediumGroup", "MediumFlat", "Large", "Largest"}

                for _, v in pairs(workspace:GetChildren()) do
                    if table.find(batuLaut, v.Name) and v:IsA("Model") then
                        for _, part in pairs(v:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.BiirTrax then
                wait(0.8)
                local targetModelName = "PirateBrigade" -- Ganti dengan nama model yang dicari
                local models = workspace.Boats:GetChildren() -- Sesuaikan dengan hierarki kapalmu

                for _, model in pairs(models) do
                    if model.Name == targetModelName then
                        local speed = 10.5
                        local forwardDirection = model.PrimaryPart.CFrame.lookVector
                        local targetPosition = model.PrimaryPart.Position + forwardDirection * 10

                        while (model.PrimaryPart.Position - targetPosition).Magnitude > 0.1 do
                            model:SetPrimaryPartCFrame(model.PrimaryPart.CFrame + forwardDirection * speed)
                            task.wait()
                            if not _G.BiirTrax then
                                break -- Hentikan pergerakan jika _G.BiirTrax diatur ke false
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.BiirTrax then
                wait(0.8)
                local targetModelNames = "PirateBrigade"
                local models = workspace.Boats:GetChildren()

                for _, targetModelName in ipairs(targetModelNames) do
                    local targetModel = workspace:FindFirstChild(targetModelName)

                    if targetModel then
                        local speed = 10.5
                        local forwardDirection = targetModel.PrimaryPart.CFrame.lookVector
                        local targetPosition = targetModel.PrimaryPart.Position + forwardDirection * 10

                        while (targetModel.PrimaryPart.Position - targetPosition).Magnitude > 0.1 do
                            targetModel:SetPrimaryPartCFrame(targetModel.PrimaryPart.CFrame + forwardDirection * speed)
                            task.wait()
                            if not _G.BiirTrax then
                                break
                            end
                        end
                    end
                end
            end
        end)
    end
end)

_G.WalkWater = true
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AutoAdvanceDungeon or _G.KillSea or _G.Zone6 or _G.KillPiranha or
            _G.KillShark or _G.KillTerrorShark or _G.KillFishCrew or _G.BiirTrax or
            _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or
            _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or
            _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or
            _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or
            _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or
            _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or
            _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or
            _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or
            _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or
            _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or
            _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or
            _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or
            _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or
            _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or
            _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or
            _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or
            _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or
            _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or
            _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or
            _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or
            _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or
            _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or
            _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or
            _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or
            _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or
            _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or
            Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or
            Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or
            _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or
            _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or
            _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or
            _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or
            _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30, -0.5, 30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                        CFrame.new(0, -3.6, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAdvanceDungeon or _G.KillSea or _G.Zone6 or _G.KillPiranha or
                _G.KillShark or _G.KillTerrorShark or _G.KillFishCrew or
                _G.BiirTrax or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or
                _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or
                _G.AutoFarmSwanGlasses or _G.AutoLongSword or
                _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or
                _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or
                _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or
                _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or
                _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or
                _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or
                _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or
                _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or
                _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or
                _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or
                _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or
                _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or
                _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or
                _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or
                _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or
                _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or
                _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or
                _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or
                _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or
                _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or
                _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or
                _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or
                _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or
                _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or
                _G.Makori_gay or Radioactive or Fish or Gunpowder or
                Dragon_Scale or Cocoafarm or Scrap or MiniHee or
                _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or
                _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or
                _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or
                _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or
                _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or
                _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or
                _G.Farmfast or _G.AutoRace or _G.RaidPirate == true then
                if not game:GetService("Players").LocalPlayer.Character
                    .HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoAdvanceDungeon or _G.KillSea or _G.KillShark or
                _G.KillTerrorShark or _G.KillFishCrew or _G.BiirTrax or
                _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or
                _G.AutoFactory or _G.AutoFarmBossHallow or
                _G.AutoFarmSwanGlasses or _G.AutoLongSword or
                _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or
                _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or
                _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or
                _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or
                _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or
                _G.TeleportIsland or _G.Auto_EvoRace or
                _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or
                _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or
                _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or
                _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or
                _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or
                _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or
                _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or
                _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or
                _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or
                _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or
                _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or
                _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or
                _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or
                _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or
                _G.Autogay or _G.Autopole or _G.Autosaw or
                _G.AutoObservationHakiV2 or _G.AutoFarmNearest or
                _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or
                _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or
                _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or
                Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or
                _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or
                _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or
                _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or
                _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or
                _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or
                _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or
                _G.Farmfast or _G.AutoRace or _G.RaidPirate == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer
                                      .Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

spawn(function()
    while wait() do
        if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or
            _G.AutoFarmBossHallow or _G.AutoFactory or _G.AutoFarmSwanGlasses or
            _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or
            _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or
            _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or
            _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or
            _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or
            _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or
            _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or
            _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or
            _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or
            _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or
            _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or
            _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or
            _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or
            _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or
            _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or
            _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or
            _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or
            _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or
            _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or
            _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or
            Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or
            Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or
            getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or
            _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or
            _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Farmfast or
            _G.RaidPirate == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(
                    "Ken", true)
            end)
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
            pcall(function()
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser':Button1Down(
                    Vector2.new(0, 1, 0, 1))
            end)
        end
    end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                  .CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
            "BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                "BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i, v in pairs(
                            game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0),
                                               workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0),
                                             workspace.CurrentCamera.CFrame)
end)

function CheckItem(ah)
    for k, v in pairs(
                    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                        "getInventory")) do if v.Name == ah then return v end end
end

local plr = game.Players.LocalPlayer

spawn(function()
    while wait() do
        if _G.SpeedBoats then
            for i, v in pairs(workspace.Boats:GetChildren()) do
                if v:FindFirstChild("Owner") then
                    if v:FindFirstChild("Owner").Value == plr then
                        table.foreach(v:GetDescendants(), function(a, child)
                            if child:IsA("BasePart") or child:IsA("MeshPart") or
                                child:IsA("Part") then
                                child.CanCollide = false
                            end
                        end)
                        v:FindFirstChild("Humanoid"):GetPropertyChangedSignal(
                            "Value"):Connect(function(g)
                            if g == 0 then
                                print("Vailon")
                            end
                        end)
                        repeat
                            wait()
                            plr.Character:SetPrimaryPartCFrame(v:FindFirstChild(
                                                                   "VehicleSeat").CFrame *
                                                                   CFrame.new(0,
                                                                              3,
                                                                              0))
                        until plr.Character:FindFirstChildOfClass("Humanoid")
                            .Sit == true
                        v:FindFirstChild("VehicleSeat").MaxSpeed = 350
                    end
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.FlyBoats then
            for i, v in pairs(workspace.Boats:GetChildren()) do
                if v:FindFirstChild("Owner") then
                    if v:FindFirstChild("Owner").Value == plr then
                        table.foreach(v:GetDescendants(), function(a, child)
                            if child:IsA("BasePart") or child:IsA("MeshPart") or
                                child:IsA("Part") then
                                child.CanCollide = false
                            end
                        end)
                        v:FindFirstChild("Humanoid"):GetPropertyChangedSignal(
                            "Value"):Connect(function(g)
                            if g == 0 then
                                print("Vailon")
                            end
                        end)
                        repeat
                            wait()
                            plr.Character:SetPrimaryPartCFrame(v:FindFirstChild(
                                                                   "VehicleSeat").CFrame *
                                                                   CFrame.new(0,
                                                                              3,
                                                                              0))
                        until plr.Character:FindFirstChildOfClass("Humanoid")
                            .Sit == false
                        v:FindFirstChild("VehicleSeat").CFrame = CFrame.new(
                                                                     game.Players
                                                                         .LocalPlayer
                                                                         .Character
                                                                         .HumanoidRootPart
                                                                         .CFrame
                                                                         .X, 30,
                                                                     game.Players
                                                                         .LocalPlayer
                                                                         .Character
                                                                         .HumanoidRootPart
                                                                         .CFrame
                                                                         .Z)
                    end
                end
            end
        end
    end
end)

if getgenv().FixLag then
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or
            v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or
            v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or
            e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
            e:IsA("DepthOfFieldEffect") then e.Enabled = false end
    end
end

spawn(function()
    while wait() do
        if getgenv().FixLag then
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui
                                  .Notifications:GetChildren()) do
                if v.Name == "NotificationTemplate" then
                    v:Destroy()
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().FixLag then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter
                .Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter
                .Enabled = true
        end
    end
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
-- save settings
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

-- Window

local Window = Fluent:CreateWindow({
    Title = "Cat Hub | Blox Fruits",
    SubTitle = "Free Version | Quý",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End
})

local Tabs = {
    M = Window:AddTab({ Title = "📂Main", Icon = "" }),
    I = Window:AddTab({ Title = "🛠item", Icon = "" }),
    F = Window:AddTab({ Title = "🍑Fruit", Icon = "" }),
    R = Window:AddTab({ Title = "🌑V4", Icon = "" }),
    D = Window:AddTab({ Title = "🏖Insland", Icon = "" }),
    S = Window:AddTab({ Title = "⚙️Setting", Icon = "" }),
    H = Window:AddTab({ Title = "🏝Hop", Icon = "" }),
 }

-- Tabs Settings

local chonkiem = Tabs.S:AddSection("Chọn vũ khí")

local vkhi = {"Melee","Sword","Fruit","Gun"}
local vukhi = Tabs.S:AddDropdown("Dropdown", {
    Title = "Chọn Vũ Khí",
    Description = "chọn đi gay",
    Values = vkhi,
    Multi = false,
    Default = 1,
})

vukhi:OnChanged(function(Value)
    _G.ChonVuKhi = Value
end)

task.spawn(function()
    while wait() do
        pcall(function()
            if _G.ChonVuKhi == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.ChonVuKhi = v.Name
                        end
                    end
                end
            elseif _G.ChonVuKhi == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.ChonVuKhi = v.Name
                        end
                    end
                end
            elseif _G.ChonVuKhi == "Gun" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Gun" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.ChonVuKhi = v.Name
                        end
                    end
                end
            elseif _G.ChonVuKhi == "Fruit" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.ChonVuKhi = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

local btp = Tabs.S:AddToggle("Bypass", 
{
    Title = "Bypass TP", 
    Description = "This is fast teleport",
    Default = false
    Callback = function(duma)
        BypassTP = duma
    end 
})

local oat = Tabs.S:AddToggle("notbybass", 
{
    Title = "Safe Bypass TP", 
    Description = "If have god chalice or ... willnot rs",
    Default = true
})

oat:OnChanged(function(Value)
    safebtp = Value
end)

if safebtp then
    spawn(function()
        if (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
            game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or
            game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
            game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or
            game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
            game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or
            game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
            game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) then
                BypassTP = false
        end
    end)
end
   

local attacklor = Tabs.S:AddSection("Fast attack")

local attack = Tabs.S:AddToggle("attack", 
{
    Title = "Fast Attack", 
    Description = "attack lỏ",
    Default = true
    Callback = function(uoi)
        _G.attacklor = uoi
    end 
})

-- attack function ;-;

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge ^ math.huge ^ math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false
        end
    end)
end)

function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts
                                                             .CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent
    end
    return weapon
end
function Attack()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,
            {plr.Character.HumanoidRootPart}, 60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 60
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",
                    tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end
spawn(function()
    while wait(.1) do
        if _G.attacklor then
            pcall(function()
                repeat
                    task.wait(_G.FastAttackDelay)
                    Attack()
                until not _G.attacklor
            end)
        end
    end
end)
   
local attacknoob = {"Super Fast", "Fast", "Normal", "Slow"}
local chonattack = Tabs.S:AddDropdown("Chọn FA", {
    Title = "Chọn Fast attack",
    Description = "Fast Attack lỏ",
    Values = attacknoob,
    Multi = false,
    Default = 1,
})

chonattack:OnChanged(function(Value)
    _G.FastAttackDelay = Value
end)

spawn(function()
    while wait() do
        if _G.FastAttackDelay then
            pcall(function()
                if _G.FastAttackDelay == "Super Fast" then
                    _G.FastAttackDelay = 0
                elseif _G.FastAttackDelay == "Fast" then
                    _G.FastAttackDelay = 0.175
                elseif _G.FastAttackDelay == "Normal" then
                    _G.FastAttackDelay = 0.5
                elseif _G.FastAttackDelay == "Slow" then
                    _G.FastAttackDelay = 1
                end
            end)
        end
    end
end)

local bringquai = Tabs.S:AddSection("Bring Gà 🐔")

local chickens = Tabs.S:AddToggle("BringMobs", 
{
    Title = "Bring Mobs", 
    Description = "BringMobs Legit",
    Default = true
    Callback = function(Value)
        _G.BringMonster = Value
    end 
})

local galist = {"Super Large", "Large", "Normal", "low"}
local ga = Tabs.S:AddDropdown("Bringmobslist", {
    Title = "Brings Mode",
    Description = "BringMobs legit ",
    Values = galist,
    Multi = false,
    Default = 1,
})

ga:OnChanged(function(Value)
    G.BringMode = Value
end)

spawn(function()
    while wait() do
        if _G.BringMode then
            pcall(function()
                if _G.BringMode == "Super Large" then
                    _G.BringMode = 450
                elseif _G.BringMode == "Large" then
                    _G.BringMode = 400
                elseif _G.BringMode == "Normal" then
                    _G.BringMode = 375
                elseif _G.BringMode == "low" then
                    _G.BringMode = 300
                end
            end)
        end
    end
end)

local highList = {"15", "20", "25", "30"}
local docao = Tabs.S:AddDropdown("Dropdown", {
    Title = "PosY",
    Description = "Y = độ cao",
    Values = highList,
    Multi = false,
    Default = 4,
})

docao:OnChanged(function(Value)
    PosY = Value
end)

-- haki vu trang 

local trangbihaki = Tabs.S:AddToggle("buso", 
{
    Title = "Auto Buso", 
    Description = "Auto haki vũ trang",
    Default = false
    Callback = function(Value)
        _G.AUTOHAKI = Value
    end 
})

-- Tabs Main

local noname = Tabs.M:AddSection("Katakuri")

local kata = Tabs.M:AddToggle("Katakuri", 
{
    Title = "Auto Katakuri", 
    Description = " Auto Farm Katakuri",
    Default = false
    Callback = function(Value)
        _G.AutoDoughtBoss = Value
        StopTween(_G.AutoDoughtBoss)
    end 
})

local noname2 = Tabs.M:AddSection("Bone")

local bone = Tabs.M:AddToggle("xuong", 
{
    Title = "Auto farm Bone", 
    Description = "Farm xương",
    Default = false
    Callback = function(Value)
        _G.BoneFarming = Value
        StopTween(_G.BoneFarming)
    end 
})

local bien3 = Tabs.M:AddSection("other Thirst Sea")

local elite = Tabs.M:AddToggle("Elite", 
{
    Title = "Auto Farm Elite", 
    Description = "Auto farm boss bí ẩn",
    Default = false
    Callback = function(Value)
	if state then
        _G.AutoKillElite = Value
        StopTween(_G.AutoKillElite)
    end 
})

local haicac = Tabs.M:AddToggle("ToggleCastleRaid", {
    Title = "Auto Pirates Raid",
    Description = "Auto đánh hải cặc",
    Default = false
})
ToggleCastleRaid:OnChanged(function(Value)
    _G.CastleRaid = Value
end)
Options.ToggleCastleRaid:SetValue(false)
spawn(function()
    while wait() do
        if _G.CastleRaid then
            pcall(function()
                local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512,
                    7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07,
                    0.924894512)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position -
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.CastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                            v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat
                                    wait(_G.FastAttackDelay)
                                    Attack()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.CastleRaid
                            end
                        end
                    end
                else
                    toTarget(CFrameCastleRaid)
                end
            end)
        end
    end
end)

Tabs.M:AddButton({
    Title = "Nhập Hết Code",
    Description = "",
    Callback = function()
        RedeemCode()
    end
})

function RedeemCode(Code)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end
