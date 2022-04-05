local Library = loadingstring(game:HttpGet("https://raw.githubusercontent.com/Mrme0789/PetSimX.lua/main/PetSimX.lua"))()
local Window = Library.CreateLib("PetSimX Made by Chet#3348 V1.0.0", "Sentinel")

local Tab1 = Window:NewTab("Misc")
local Tap1Section = Tab:NewSection("Auto Hatch Egg")
Tap1Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        local eggName="Cracked Egg" -- Set to the egg you want to hatch
local TripleHatch=false -- Set to true if you want triple hatch (gamepass needed)
_G.Stop=false -- Set to true to stop the script.


local eggRemote=game: GetService ("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]

while wait () do
    eggRemote:InvokeServer({eggName, TripleHatch})
    if _G.Stop then
        break
    end
end
    else
        print("Toggle Off")
    end
end)
local Tab2 = Window:NewTab("Players")
Tap2Section:NewSlider("WalkSpeed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
