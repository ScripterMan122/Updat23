local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Oni GUI Hub",
   LoadingTitle = "Oni Gui's",
   LoadingSubtitle = "by Oni💮",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Youtube Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/AtgzSPWK"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("GUI'S")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Multi Gui",
   Duration = 1,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("You Tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Da Hood",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Hood Modded",
   Callback = function()
   loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Rippeed/DaHoodinary/main/chariotsware"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "FortBlox",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Youtube Simulator Z(Key)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/DEVIL-Script/DEVIL-Hub/main/DEVIL-Hub-Main", true))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Shoot Out!",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/RobloxStuff/main/Shoot-Destroyer", true))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Funky Friday",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Ninja Legends",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/StormSKz12/StirkeHub1/main/Gameincluded"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "BloxFruit(KEY)",
   Callback = function()
   loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
   end,
})

local Button = MainTab:CreateButton({
   Name = "JailBreak",
   Callback = function()
   loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "ArmWrestle Simualtor",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/zicus-scripts/SkullHub/main/Loader.lua')))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "FlagShooters",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Oni231123/Hack2.0/main/wd.lua'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Arsenal(Key)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AndrewDarkyy/ThunderClient/main/main.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "BigPaint Ball",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ScripterMan122/Bigpaintball/main/Paint.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Energy Simulator",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Killa5676/Killa-s-Scripts/main/Energy%20Simulator'))()
   end,
})