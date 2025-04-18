getgenv().Config = {
 ["Team"] = "Pirates",
 ["Safe Health"] = {40, 50},
 ["Skip"] = { 
 ["Fruit"] = {["Enabled"] = true,
 ["Avoid Fruit"] = {
 "Portal-Portal", 
 "Kitsune-Kitsune"
 }
 },
 ["Avoid V4"] = true
 },
 ["Hunt Method"] = {
 ["Use Move Predict"] = true,
 ["Hit and Run"] = true
 },
 ["Spam All Skill On V4"] = {
 ["Enabled"] = true,
 ["Weapons"] = {"Melee", "Gun", "Sword", "Blox Fruit"}
 },
 ["Chat"] = {
 ["Enabled"] = false,
 ["Message"] = {"Hiru Hub Bounty"}
 },
 ["Custom Y Run"] = {
 ["Enabled"] = false,
 ["Y Run"] = 100
 },
 ["Misc"] = {
 ["Auto Store Fruit"] = true,
 ["Auto Random Fruit"] = true,
 ["White Screen"] = false,
 ["Click Delay"] = 0.1,
 },
 ["Items"] = {["Use"] = {"Melee", "Gun", "Sword"},
 ["Melee"] = {
 ["Enable"] = true,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.5},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 }
 },
 ["Blox Fruit"] = {
 ["Enable"] = false,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 1.2},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0},
 ["C"] = {["Enable"] = true, ["HoldTime"] = 0},
 ["V"] = {["Enable"] = false, ["HoldTime"] = 0},
 ["F"] = {["Enable"] = false, ["HoldTime"] = 0}
 }
 },
 ["Sword"] = {
 ["Enable"] = true,
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 } 
 },
 ["Gun"] = {
 ["Enable"] = true, 
 ["Skills"] = {
 ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
 ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1}
 } 
 }
 }
}
--- Join Team
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
if not player.Team then
    if getgenv().Config.Team == "Marines" then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    elseif getgenv().Config.Team == "Pirates" then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
    repeat
        task.wait(1)
        local chooseTeam = playerGui:FindFirstChild("ChooseTeam", true)
        local uiController = playerGui:FindFirstChild("UIController", true)
        if chooseTeam and chooseTeam.Visible and uiController then
            for _, v in pairs(getgc(true)) do
                if type(v) == "function" and getfenv(v).script == uiController then
                    local constant = getconstants(v)
                    pcall(function()
                        if (constant[1] == "Pirates" or constant[1] == "Marines") and #constant == 1 then
                            if constant[1] == getgenv().Config.Team then
                                v(getgenv().Config.Team)
                            end
                        end
                    end)
                end
            end
        end
    until player.Team
end
--//UI
local plrs = game.Players
local lp = plrs.LocalPlayer
MainGui = Instance.new("ScreenGui");
MainFrame = Instance.new("Frame");
UICorner = Instance.new("UICorner");
Background = Instance.new("ImageLabel");
UICorner1 = Instance.new("UICorner");
Character = Instance.new("ImageLabel");
TextLabel = Instance.new("TextLabel");
TextLabel1 = Instance.new("TextLabel");
CharacterIcon = Instance.new("ImageLabel");
BountyEarned = Instance.new("TextLabel");
UIStroke = Instance.new("UIStroke");
TotalBountyEarned = Instance.new("TextLabel");
UIStroke1 = Instance.new("UIStroke");
CilentTimeElapsed = Instance.new("TextLabel");
UIStroke2 = Instance.new("UIStroke");
AccoutTimeElapsed = Instance.new("TextLabel");
UIStroke3 = Instance.new("UIStroke");
SkipImg = Instance.new("ImageLabel");
UICorner2 = Instance.new("UICorner");
SkipButton = Instance.new("TextButton");
CrentBounty = Instance.new("TextLabel");
UIStroke4 = Instance.new("UIStroke");
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainGui.Name = "MainGui"
MainGui.Parent = lp.PlayerGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 412, 0, 220)
MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGui
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = MainFrame
Background.Image = "rbxassetid://138332756725629"
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 0.9990000128746033
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Name = "Background"
Background.Parent = MainFrame
UICorner1.CornerRadius = UDim.new(0, 5)
UICorner1.Parent = Background
Character.Image = "rbxassetid://"
Character.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Character.BackgroundTransparency = 0.9990000128746033
Character.BorderColor3 = Color3.fromRGB(0, 0, 0)
Character.BorderSizePixel = 0
Character.Position = UDim2.new(0, 485, 0, -80)
Character.Size = UDim2.new(0, 297, 0, 460)
Character.Name = "Character"
Character.Parent = MainFrame
TextLabel.Font = Enum.Font.Merriweather
TextLabel.Text = "Hiru Hub Bounty"
TextLabel.TextColor3 = Color3.fromRGB(219, 15, 53)
TextLabel.TextSize = 28
TextLabel.TextTransparency = 0.800000011920929
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 0.9990000128746033
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 74, 0, 9)
TextLabel.Size = UDim2.new(0, 200, 0, 43)
TextLabel.Parent = MainFrame
TextLabel1.Font = Enum.Font.Merriweather
TextLabel1.Text = "Hiru Hub Bounty"
TextLabel1.TextColor3 = Color3.fromRGB(219, 15, 53)
TextLabel1.TextSize = 28
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BackgroundTransparency = 0.9990000128746033
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0, 5, 0, 0)
TextLabel1.Size = UDim2.new(1, 0, 1, 0)
TextLabel1.Parent = TextLabel
CharacterIcon.Image = "rbxassetid://"
CharacterIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CharacterIcon.BackgroundTransparency = 0.9990000128746033
CharacterIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
CharacterIcon.BorderSizePixel = 0
CharacterIcon.Position = UDim2.new(0, 9, 0, 9)
CharacterIcon.Size = UDim2.new(0, 45, 0, 45)
CharacterIcon.Name = "CharacterIcon"
CharacterIcon.Parent = MainFrame
BountyEarned.Font = Enum.Font.Bodoni
BountyEarned.Text = "Bounty Farm: 0$"
BountyEarned.TextColor3 = Color3.fromRGB(255, 255, 255)
BountyEarned.TextSize = 20
BountyEarned.TextTransparency = 0.10000000149011612
BountyEarned.TextXAlignment = Enum.TextXAlignment.Left
BountyEarned.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BountyEarned.BackgroundTransparency = 0.9990000128746033
BountyEarned.BorderColor3 = Color3.fromRGB(0, 0, 0)
BountyEarned.BorderSizePixel = 0
BountyEarned.Position = UDim2.new(0.0104153832, 0, 0.4, 3)
BountyEarned.Size = UDim2.new(0, 10, 0, 1)
BountyEarned.Name = "BountyEarned"
BountyEarned.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(217, 15, 22)
UIStroke.Thickness = 0.4000000059604645
UIStroke.Parent = BountyEarned
CilentTimeElapsed.Font = Enum.Font.Bodoni
CilentTimeElapsed.Text = "Time Elapsed: 0$"
CilentTimeElapsed.TextColor3 = Color3.fromRGB(255, 255, 255)
CilentTimeElapsed.TextSize = 20
CilentTimeElapsed.TextTransparency = 0.10000000149011612
CilentTimeElapsed.TextXAlignment = Enum.TextXAlignment.Left
CilentTimeElapsed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CilentTimeElapsed.BackgroundTransparency = 0.9990000128746033
CilentTimeElapsed.BorderColor3 = Color3.fromRGB(0, 0, 0)
CilentTimeElapsed.BorderSizePixel = 0
CilentTimeElapsed.Position = UDim2.new(0.0104153832, 0, 0.5, 6)
CilentTimeElapsed.Size = UDim2.new(0, 10, 0, 1)
CilentTimeElapsed.Name = "CilentTimeElapsed"
CilentTimeElapsed.Parent = MainFrame
UIStroke2.Color = Color3.fromRGB(217, 15, 22)
UIStroke2.Thickness = 0.4000000059604645
UIStroke2.Parent = CilentTimeElapsed
SkipImg.Image = "rbxassetid://138332756725629"
SkipImg.AnchorPoint = Vector2.new(0, 1)
SkipImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkipImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipImg.BorderSizePixel = 0
SkipImg.Position = UDim2.new(0, 5, 1, -5)
SkipImg.Size = UDim2.new(0, 150, 0, 48)
SkipImg.Name = "SkipImg"
SkipImg.Parent = MainFrame
UICorner2.CornerRadius = UDim.new(0, 100)
UICorner2.Parent = SkipImg
SkipButton.Font = Enum.Font.SourceSansBold
SkipButton.Text = "Next Player"
SkipButton.TextColor3 = Color3.fromRGB(217, 15, 22)
SkipButton.TextSize = 19
SkipButton.BackgroundColor3 = Color3.fromRGB(245, 245, 122)
SkipButton.BackgroundTransparency = 0.9990000128746033
SkipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipButton.BorderSizePixel = 0
SkipButton.Size = UDim2.new(1, 0, 1, 0)
SkipButton.Name = "SkipButton"
SkipButton.Parent = SkipImg
CrentBounty.Font = Enum.Font.Bodoni
CrentBounty.Text = "Current Bounty: 0$"
CrentBounty.TextColor3 = Color3.fromRGB(255, 255, 255)
CrentBounty.TextSize = 21
CrentBounty.TextTransparency = 0.10000000149011612
CrentBounty.TextXAlignment = Enum.TextXAlignment.Left
CrentBounty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrentBounty.BackgroundTransparency = 0.9990000128746033
CrentBounty.BorderColor3 = Color3.fromRGB(0, 0, 0)
CrentBounty.BorderSizePixel = 0
CrentBounty.Position = UDim2.new(0.0104153821, 0, 0.3, 0)
CrentBounty.Size = UDim2.new(0, 10, 0, 1)
CrentBounty.Name = "CrentBounty"
CrentBounty.Parent = MainFrame
UIStroke4.Color = Color3.fromRGB(217, 15, 22)
UIStroke4.Thickness = 0.4000000059604645
UIStroke4.Parent = CrentBounty
--// Edit Gui
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end
	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position
				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)
	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)
	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end
MakeDraggable(MainFrame, MainFrame)
SkipButton.MouseButton1Down:Connect(function()
    findtarget()
end)
local foldername = "HIRU HUB ON TOP"
local filename = game.Players.LocalPlayer.Name.."_Main.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G.Settings)
    if (writefile) then
        if not isfolder(foldername) then
            makefolder(foldername)
        end
        writefile(foldername.."/"..filename, json)
    end
end
function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfile(foldername.."/"..filename) then
        _G.Settings = HttpService:JSONDecode(readfile(foldername.."/"..filename))
    else
        _G.Settings = {killCount = 0, timeElapsed = 0, bountyEarned = 0}
    end
end
loadSettings()
local foldername = "HIRU HUB ON TOP"
local filename = game.Players.LocalPlayer.Name.."_Main.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G.Settings)
    if (writefile) then
        if not isfolder(foldername) then
            makefolder(foldername)
        end
        writefile(foldername.."/"..filename, json)
    end
end
function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfile(foldername.."/"..filename) then
        _G.Settings = HttpService:JSONDecode(readfile(foldername.."/"..filename))
    else
        _G.Settings = {killCount = 0, timeElapsed = 0, bountyEarned = 0}
    end
end
loadSettings()
local oldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Changed:Connect(function(newBounty)
    _G.Settings.bountyEarned = _G.Settings.bountyEarned + (newBounty - oldBounty)
    oldBounty = newBounty
    saveSettings()
end)
local startTime = os.time()
local function updateElapsedTime()
    local elapsedTime = os.time() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = elapsedTime % 60
    CilentTimeElapsed.Text = string.format("TimeElapsed: %dh %dm %d(s)", hours, minutes, seconds)
end
spawn(function()
    while true do
        updateElapsedTime()
        wait(1)
    end
end)
spawn(function ()
    while task.wait() do
        BountyEarned.Text = "Bounty Farm: " .. _G.Settings.bountyEarned
        CrentBounty.Text = "Current Bounty: " .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    end
end)
--//function now
_G.FastAttack = true
if _G.FastAttack then
    local _ENV = (getgenv or getrenv or getfenv)()
    local function SafeWaitForChild(parent, childName)
        local success, result = pcall(function()
            return parent:WaitForChild(childName)
        end)
        if not success or not result then
            warn("Không tìm thấy: " .. childName)
        end
        return result
    end
    local function WaitChilds(path, ...)
        local last = path
        for _, child in {...} do
            last = last:FindFirstChild(child) or SafeWaitForChild(last, child)
            if not last then break end
        end
        return last
    end
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local CollectionService = game:GetService("CollectionService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local TeleportService = game:GetService("TeleportService")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    if not Player then
        warn("Không tìm thấy người chơi cục bộ.")
        return
    end
    local Remotes = SafeWaitForChild(ReplicatedStorage, "Remotes")
    if not Remotes then return end
    local Validator = SafeWaitForChild(Remotes, "Validator")
    local CommF = SafeWaitForChild(Remotes, "CommF_")
    local CommE = SafeWaitForChild(Remotes, "CommE")
    local ChestModels = SafeWaitForChild(workspace, "ChestModels")
    local WorldOrigin = SafeWaitForChild(workspace, "_WorldOrigin")
    local Characters = SafeWaitForChild(workspace, "Characters")
    local Enemies = SafeWaitForChild(workspace, "Enemies")
    local Map = SafeWaitForChild(workspace, "Map")
    local EnemySpawns = SafeWaitForChild(WorldOrigin, "EnemySpawns")
    local Locations = SafeWaitForChild(WorldOrigin, "Locations")
    local RenderStepped = RunService.RenderStepped
    local Heartbeat = RunService.Heartbeat
    local Stepped = RunService.Stepped
    local Modules = SafeWaitForChild(ReplicatedStorage, "Modules")
    local Net = SafeWaitForChild(Modules, "Net")
    local sethiddenproperty = sethiddenproperty or function(...) return ... end
    local setupvalue = setupvalue or (debug and debug.setupvalue)
    local getupvalue = getupvalue or (debug and debug.getupvalue)
    local Settings = {
        AutoClick = true,
        ClickDelay = 0.5 -- Tăng độ trễ lên 0.5 giây để giảm tốc độ đánh
    }
    local Module = {}
    Module.FastAttack = (function()
        if _ENV.rz_FastAttack then
            return _ENV.rz_FastAttack
        end
        local FastAttack = {
            Distance = 100,
            attackMobs = true,
            attackPlayers = true,
            Equipped = nil
        }
        local RegisterAttack = SafeWaitForChild(Net, "RE/RegisterAttack")
        local RegisterHit = SafeWaitForChild(Net, "RE/RegisterHit")
        local function IsAlive(character)
            return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
        end
        local function ProcessEnemies(OthersEnemies, Folder)
            local BasePart = nil
            for _, Enemy in Folder:GetChildren() do
                local Head = Enemy:FindFirstChild("Head")
                if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < FastAttack.Distance then
                    if Enemy ~= Player.Character then
                        table.insert(OthersEnemies, { Enemy, Head })
                        BasePart = Head
                    end
                end
            end
            return BasePart
        end
        function FastAttack:Attack(BasePart, OthersEnemies)
            if not BasePart or #OthersEnemies == 0 then return end
            RegisterAttack:FireServer(Settings.ClickDelay or 0)
            RegisterHit:FireServer(BasePart, OthersEnemies)
        end
        function FastAttack:AttackNearest()
            local OthersEnemies = {}
            local Part1 = ProcessEnemies(OthersEnemies, Enemies)
            local Part2 = ProcessEnemies(OthersEnemies, Characters)
            local character = Player.Character
            if not character then return end
            local equippedWeapon = character:FindFirstChildOfClass("Tool")
            if equippedWeapon and equippedWeapon:FindFirstChild("LeftClickRemote") then
                for _, enemyData in ipairs(OthersEnemies) do
                    local enemy = enemyData[1]
                    local direction = (enemy.HumanoidRootPart.Position - character:GetPivot().Position).Unit
                    pcall(function()
                        equippedWeapon.LeftClickRemote:FireServer(direction, 1)
                    end)
                end
            elseif #OthersEnemies > 0 then
                self:Attack(Part1 or Part2, OthersEnemies)
            else
                task.wait(0)
            end
        end
        function FastAttack:BladeHits()
            local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
            if Equipped and Equipped.ToolTip ~= "Gun" then
                self:AttackNearest()
            else
                task.wait(0)
            end
        end
        task.spawn(function()
            while task.wait(Settings.ClickDelay) do
                if Settings.AutoClick then
                    FastAttack:BladeHits()
                end
            end
        end)
        _ENV.rz_FastAttack = FastAttack
        return FastAttack
    end)()
end
local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local rs = game.ReplicatedStorage
function Hop()
    function bQ(v)
        if v.Name == "ErrorPrompt" then
            if v.Visible then
                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                    v.Visible = false
                end
            end
            v:GetPropertyChangedSignal("Visible"):Connect(function()
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        v.Visible = false
                    end
                end
            end)
        end
    end
    for i, v in game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren() do
        bQ(v) 
    end
    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
    while wt() do
        randomy = math.random(1000, 5000)
        if Config["Custom Y Run"].Enabled then
            randomy = Config["Custom Y Run"]["Y Run"]
        end
        to(CFrame.new(-12463.8740234375 , randomy, -7523.77392578125)) 
        if not checkcombat() then
            for r = 1, math.huge do
                to(CFrame.new(-12463.8740234375 , 1000, -7523.77392578125)) 
                game.Players.LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ""
                for k, v in inv(rs.__ServerBrowser, {r}) do
                    if k ~= game.JobId and v["Count"] <= 10 then
                        inv(rs.__ServerBrowser, {"teleport", k})
                    end
                end
                wt()
            end
        end
    end
end
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for _, v in pairs(Site.data) do
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
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
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
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    function WaitForNoCombat()
        repeat
            wait(3)
        until game.Players.LocalPlayer.Character and (game.Players.LocalPlayer.Character:GetAttribute("InCombat") or 0) == 0
    end
    WaitForNoCombat()
    Teleport()
end
getgenv().Bounty = {
    Targ = nil,
    Checked = {},
    Hop = false,
    CanUseWeapon = false,
    CanUseSkill = false,
    UsingSkill = false,
    WeaponUsing = "",
    ToolTipUsing = "Melee",
    CFrameTarget = CFrame.new(Vector3.new(0,0,0)),
    Digit = CFrame.new(Vector3.new(0,0,0)),
}
--- Tween / Bypass
local w = game.PlaceId
if w == 2753915549 then
    distbyp = 1500
elseif w == 4442272183 then
    distbyp = 3500
elseif w == 7449423635 then
    distbyp = 6000
end
function getPortal(check2)
    local check3 = check2.Position
    local w = game.PlaceId
    if w == 2753915549 then
        gQ = {
            Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406),
            Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif w == 4442272183 then
        gQ = {
            Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif w == 7449423635 then
        gQ = {
            Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    end
    local aM, aN = Vector3.new(0,0,0), math.huge

    for _, aL in pairs(gQ) do
        if (aL-check3).Magnitude < aN and aM ~= aL then
            aM, aN = aL,  (aL-check3).Magnitude
        end 
    end
    return aM
end  
function getSpawn(wtf)
    local a, b = nil, math.huge
    for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(lp.Team)):GetChildren()) do
        if tostring(v) ~= "Leviathan" and (v:GetModelCFrame().Position-wtf.Position).Magnitude < b then
            a = v:GetModelCFrame()
            b = (v:GetModelCFrame().Position-wtf.Position).Magnitude
        end
    end
    return a
end
function request(check1)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({"requestEntrance", check1}))
end
function calcpos(I, II) 
    if not II then 
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame 
    end 
    return (Vector3.new(I.X, 0, I.Z)-Vector3.new(II.X, 0, II.Z)).Magnitude 
end
function checkCombat()
    local player = game:GetService("Players").LocalPlayer
    local combatGui = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("Main") and player.PlayerGui.Main:FindFirstChild("InCombat")   
    if combatGui and combatGui:IsA("TextLabel") and combatGui.Visible then
        local text = combatGui.Text and string.lower(combatGui.Text) or ""
        return string.find(text, "risk") ~= nil
    end    
    return false
end
function to(Pos)
    if not Pos then return end 
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false    
        end
    end
    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hiru") then
        local ngu = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        ngu.Name = "Hiru"
        ngu.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        ngu.Velocity = Vector3.new(0,0,0)
    end 
    Portal = getPortal(Pos) 
    Spawn = getSpawn(Pos) 
    for mm = 0,3,1 do 
        if getSpawn(Pos) ~= Spawn then 
            return 
        end 
    end 
    MyCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Distance = calcpos(MyCFrame, Pos)
    if Distance > distbyp and Distance > calcpos(Portal, Pos) and Distance > calcpos(Portal, Pos) then
        return request(Portal) 
    end
    if Spawn then 
        Pos0 = calcpos(Spawn, Pos)
        end
    if Distance < 500 then
        Speed = 350
    elseif Distance < 1000 then
        Speed = 350
    elseif Distance >= 1000 then
        Speed = 350
    end
    if Speed ~= nil then
        tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
        tween:Play() 
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
--// Equip
function equip(tool)
    for _, v in lp.Backpack:GetChildren() do 
        if v:IsA("Tool") and v.ToolTip == tool then
            wfh(lp):EquipTool(v)
            return v.Name
        end 
    end 
    return false
end
--// Use Skill
function down(use, cooldown)
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        task.wait(cooldown)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
end
--// Click
function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
end
function getAvailableSkills(Setting) 
    local V = game.Players.LocalPlayer.PlayerGui.Main.Skills
    local Cache = {}
    for i, v in pairs(lp.Character:GetChildren()) do 
        if v:IsA("Tool") then 
            table.insert(Cache, v)
        end 
    end 
    for i, v in pairs(lp.Backpack:GetChildren()) do 
        if v:IsA("Tool") then 
            table.insert(Cache, v)
        end 
    end 
    for i, v in pairs(Cache) do 
        -- warn(v, v.ToolTip , Setting.Item[v.ToolTip]    )
        if v.ToolTip and Setting.Item[v.ToolTip] and Setting.Item[v.ToolTip].Enable then
            -- warn(1)
            for i2, v2 in pairs(Setting.Item[v.ToolTip]) do
                if i2 ~= "Enable" and v2.Enable then 
                    if V:FindFirstChild(v.Name) and V[v.Name]:FindFirstChild(i2) then 
                        local GuiData = V[v.Name][i2]
                        if GuiData.Cooldown.AbsoluteSize.X <= 0 then
                            return {i2, v2, v.ToolTip}
                        end
                    else
                        equip(v.ToolTip)
                    end
                end
            end 
        end 
    end
    return false
end
--// Aim
aim = true
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if aim and CFrameHunt ~= nil then
                        args[2] = CFrameHunt.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
--// Skill
function cd(I, II) 
    if not II then II = lp.Character.PrimaryPart.CFrame end
    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude 
end 
function int(num)
    if not num then return end
    return tonumber(num)
end
function str(string)
    if not string then return end
    return tostring(string)
end
function wt(num)
    if not num then return task.wait() end
    return task.wait(int(num))
end
function ffc(obj, child)
    if not obj or not child then return end
    return obj:FindFirstChild(str(child))
end
function wfc(obj, child)
    if not obj or not child then return end
    return obj:WaitForChild(str(child), 9)
end
function wfh(mob)
    if not mob then return end
    return wfc(mob.Character, "Humanoid")
end
function wfhrp(mob)
    if not mob then return end
    return wfc(mob.Character, "HumanoidRootPart")
end
function checkmon(mob)
    if not mob then return end
    if mob and ffc(mob.Character, "Humanoid") and mob.Character.Humanoid.Health > 0 and ffc(mob.Character, "HumanoidRootPart") then
        return true
    end
    return
end
function inv(obj, child)
    if not obj or not child then return end
    return obj:InvokeServer(unpack(child))
end
function checkfruit(targcheck)
    local pdf = targcheck and ffc(targcheck, "Data") and ffc(targcheck.Data, 'DevilFruit') and targcheck.Data.DevilFruit.Value
    for _, v in Config["Skip"]["Fruit"]["Avoid Fruit"] do 
        if str(v) == str(pdf) then 
            return true
        end
    end
    return false
end
function findtarget()
    table.insert(Bounty.Checked, Bounty.Targ)
    Bounty.CanUseWeapon = false
    Bounty.CanUseSkill = false
    if Config["Chat"]["Enabled"] then
        ffc(wfc(rs, "DefaultChatSystemChatEvents"), "SayMessageRequest"):FireServer(Config["Chat"]["Message"][math.random(1, #Config["Chat"]["Message"])], "All")
    end
    if not Bounty.Hop then
        local targetPlayer, closestDist = nil, math.huge
        for _, v in ipairs(plrs:GetChildren()) do
            if v ~= lp and v ~= targetPlayer and v.Team and v.Team.Name:find("es") and not table.find(Bounty.Checked, v)
            and (lp.Team.Name == "Pirates" or v.Team.Name == "Pirates") 
            and math.abs(lp.Data.Level.Value - v.Data.Level.Value) < 600
            and (not Config["Skip"]["Fruit"]["Enabled"] or not checkfruit(v))
            and (not Config["Skip"]["Avoid V4"] or not (ffc(v.Backpack, "Awakening") or ffc(v.Character, "Awakening")))
            and cd(getSpawn(wfhrp(v).CFrame), wfhrp(v).CFrame) <= 3000
            and not ffc(v.Character, "TempSafeZone") and checkmon(v) then
                local dist = cd(wfhrp(v).CFrame, wfhrp(lp).CFrame)
                if dist < closestDist then
                    targetPlayer = v
                    closestDist = dist
                end
            end
        end
        if targetPlayer then
            Bounty.Targ = targetPlayer
            return false
        end
    end
    Bounty.Hop = true
    Hop()
    return false
end
function checknotify(msg, msg1)
    msg1 = msg1 or ""
    for i, v in pairs(lp.PlayerGui.Notifications:GetChildren()) do
        if v and v.Text and string.find(string.lower(v.Text), string.lower(msg)) and string.find(string.lower(v.Text), string.lower(msg1)) then
            v:Destroy()
            return true
        end
    end
    return false
end
function checkraid(target)
    if ffc(workspace["_WorldOrigin"].Locations, "Island 1") then
        if cd(wfhrp(target).CFrame, workspace["_WorldOrigin"].Locations["Island 1"].CFrame) < 3000 then 
            return true 
        end 
    end 
    return false
end
function checksafezone(pos)
    for _, v in workspace._WorldOrigin.SafeZones:GetChildren() do
        if cd(v.CFrame, pos) < (v.Mesh.Scale.Magnitude / 2) then
            return true
        end
    end
    return false
end
local oldtarg = Bounty.Targ
local oldtime = tick()
local oldspamskill = tick()
local startuse = false
function checktarg()
    if not Bounty.Targ or not checkmon(Bounty.Targ) then
        return findtarget()
    end
    if checksafezone(wfhrp(Bounty.Targ).CFrame) then
        return findtarget()
    end
    if checkraid(Bounty.Targ) then
        return findtarget()
    end
    if Bounty.Targ == oldtarg then
        if Bounty.UsingSkill and not startuse then
            oldspamskill = tick()
            startuse = true
        end
        if startuse and (tick() - oldspamskill) >= 3 then
            local char = Bounty.Targ.Character
            if char and (char:GetAttribute("InCombat") or 0) ~= 0 and (char:GetAttribute("InCombat") or 0) ~= 1 then
                return findtarget()
            end
        end
    else
        startuse = false
        oldtarg = Bounty.Targ
    end
    return true
end
local Mouse = game.Players.LocalPlayer:GetMouse()
Cac = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if self == Mouse then
        if Index == "Hit" or Index == "hit" then
            return Bounty.CFrameTarget
        end
    end
    return Cac(self, Index)
end))
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    args[2] = Bounty.Digit.Position
                    return old(unpack(args))
                end
            end
        end
        return old(...)
    end)
end)
spawn(function()
    while wait() do
        if checktarg() then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end)
        end    
    end
end)
local oldtw = tick()
spawn(function()
    while wt() do
        if checktarg() then
            if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
                local rel = game.ReplicatedStorage
                rel.Remotes.CommF_:InvokeServer("Buso")
            end
            if ffc(lp, "PlayerGui") and ffc(lp.PlayerGui, "ScreenGui") and ffc(lp.PlayerGui.ScreenGui, "ImageLabel") then
            end
            if ffc(workspace._WorldOrigin.Locations, "Dimensional Rift") and (workspace._WorldOrigin.Locations["Dimensional Rift"].Position - wfhrp(lp).Position).Magnitude <= 1000 and (wfhrp(Bounty.Targ).Position - workspace._WorldOrigin.Locations["Dimensional Rift"].Position).Magnitude <= 1000 then
                Bounty.CanUseWeapon = false
                Bounty.CanUseSkill = false
                to(CFrame.new(workspace._WorldOrigin.Locations["Dimensional Rift"].Position + Vector3.new(0, 190, 0)))
            else
                if tonumber(wfh(lp).Health) > 0 and (tonumber(wfh(lp).Health) < (Config["Safe Health"][1] / 100 * tonumber(wfh(lp).MaxHealth)))
                or (hide and tonumber(wfh(lp).Health) < (Config["Safe Health"][2] / 100 * tonumber(wfh(lp).MaxHealth))) then
                    Bounty.CanUseWeapon = false
                    Bounty.CanUseSkill = false
                    hide = true
                    randomy = math.random(1000, 5000)
                    if Config["Custom Y Run"].Enabled then
                        randomy = Config["Custom Y Run"]["Y Run"]
                    end
                    to(CFrame.new(wfhrp(Bounty.Targ).Position + Vector3.new(0, randomy, 0)))
                else
                    hide = false
                    Bounty.CFrameTarget = wfhrp(Bounty.Targ).CFrame
                    if tick() - oldtw >= 0.05 then
                        Bounty.Digit = Bounty.CFrameTarget + wfhrp(Bounty.Targ).Velocity / 2
                    end
                    if Bounty.Digit.Y < 5 then 
                        Bounty.Digit = CFrame.new(Bounty.Digit.X, 5, Bounty.Digit.Z) 
                    end 
                    if (wfhrp(lp).Position - Bounty.CFrameTarget.Position).Magnitude <= 80 then
                        if not ffc(Bounty.Targ.Character, "Busy") or not Bounty.Targ.Character.Busy.Value then
                            Bounty.CanUseWeapon = true
                            Bounty.CanUseSkill = true
                        else
                            Bounty.CanUseWeapon = true
                            Bounty.CanUseSkill = false
                        end
                        if Config["Hunt Method"]["Use Move Predict"] then
                            if Config["Hunt Method"]["Hit and Run"] then
                                if Bounty.UsingSkill then
                                    to(Bounty.Digit + Vector3.new(0, 4, 4))
                                else
                                    to(Bounty.Digit + Vector3.new(0, 30, 0))
                                end
                            else
                                to(Bounty.Digit + Vector3.new(0, 4, 4))
                            end
                        else
                            if Config["Hunt Method"]["Hit and Run"] then
                                if Bounty.UsingSkill then
                                    to(Bounty.CFrameTarget + Vector3.new(0, 4, 4))
                                else
                                    to(Bounty.CFrameTarget + Vector3.new(0, 30, 0))
                                end
                            else
                                to(Bounty.CFrameTarget + Vector3.new(0, 4, 4))
                            end
                        end
                    else
                        to(Bounty.CFrameTarget + Vector3.new(0, 4, 4))
                        Bounty.CanUseSkill = false
                    end
                end
            end
        end
    end
end)
local races = { 
    ["Human"] = "Last Resort", 
    ["Mink"] = "Agility", 
    ["Fishman"] = "Water Body", 
    ["Skypea"] = "Heavenly Blood", 
    ["Ghoul"] = "Heightened Senses",
    ["Cyborg"] = "Energy Core"
} 
local killcount = 0
local attackbool = false
spawn(function()
    while wt() do
        if ffc(lp.Character, "RaceTransformed") and ffc(lp.Character, "RaceEnergy") and lp.Character.RaceEnergy.Value >= 1 and not lp.Character.RaceTransformed.Value then
            down("Y", 0)
        end
        if lp.PlayerGui.Main.PvpDisabled.Visible == true then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
        end
        if Bounty.CanUseWeapon then
            if not ffc(lp.Character, races[lp.Data.Race.Value]) and inv(game.ReplicatedStorage.Remotes.CommF_, {"Wenlocktoad", "1"}) == -2 then
                down("T", 0)
            end
            if Config["Spam All Skill On V4"].Enabled and ffc(lp.Character, "RaceTransformed") and ffc(lp.Character, "RaceTransformed").Value then
                for _, v in Config["Spam All Skill On V4"]["Weapons"] do 
                    if Bounty.CanUseSkill then
                        EqWeapon = equip(v)
                        Bounty.WeaponUsing = EqWeapon
                        Bounty.ToolTipUsing = v                        
                        Bounty.UsingSkill = true
                        if EqWeapon and Config.Items[v].Enable then
                            wt(Config.Items[v].Delay)
                            for k, skill in pairs(Config.Items[v].Skills) do
                                if Bounty.CanUseSkill and skill.Enable and ffc(lp.PlayerGui.Main.Skills[EqWeapon], k) 
                                and ((lp.Data.Race.Value == "Ghoul" and ffc(lp.Character, "Heightened Senses") and lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale <= 0.4) 
                                or lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale <= 0) then
                                    down(k, skill.HoldTime)
                                    repeat wt()
                                    until ffc(lp.Character, "Busy") and not lp.Character.Busy.Value
                                    killcount = killcount + 1
                                end
                            end
                        end
                        attackbool = true
                        wt(0.25)
                        Bounty.UsingSkill = false
                        attackbool = false
                    end
                end
            else
                for _, v in Config.Items.Use do
                    if Bounty.CanUseSkill then
                        EqWeapon = equip(v)
                        Bounty.WeaponUsing = EqWeapon
                        Bounty.ToolTipUsing = v
                        Bounty.UsingSkill = true
                        if EqWeapon and Config.Items[v].Enable then
                            wt(Config.Items[v].Delay)
                            for k, skill in pairs(Config.Items[v].Skills) do
                                if Bounty.CanUseSkill and skill.Enable and ffc(lp.PlayerGui.Main.Skills[EqWeapon], k) 
                                and ((lp.Data.Race.Value == "Ghoul" and ffc(lp.Character, "Heightened Senses") and lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale <= 0.4) 
                                or lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale <= 0) then
                                    down(k, skill.HoldTime)
                                    repeat wt()
                                    until ffc(lp.Character, "Busy") and not lp.Character.Busy.Value
                                    killcount = killcount + 1
                                end
                            end
                        end
                        attackbool = true
                        wt(0.25)
                        Bounty.UsingSkill = false
                        attackbool = false
                    end
                end
            end
        end
    end
end)
local u5 = require(game.ReplicatedStorage:WaitForChild("Notification"))
spawn(function()
    while wt() do
        u5.new("<Color=Green>AUTO BOUNTY HIRU HUB<Color=/>"):Display()
        wt(34)
    end
end)
    local v1 = game:GetService("UserInputService")
    local v2 = game.Players.LocalPlayer:GetMouse()
    local v3 = (v1.TouchEnabled and v1.TouchTapInWorld) or v2.Button1Down 
    local gundelay = tick()
    local attackdelay = tick()
    function Attack()
        if ffc(lp.Character, "Stun") and lp.Character.Stun.Value ~= 0 then
            return
        end
        if Bounty.ToolTipUsing ~= "Blox Fruit" then
            if Bounty.ToolTipUsing == "Gun" then
                if ffc(lp.Character, Bounty.WeaponUsing) and tick() - gundelay >= lp.Character[Bounty.WeaponUsing].Cooldown.Value then
                    for _, v4 in getconnections(v3) do
                        if type(v4.Function) == "function" and debug.getinfo(v4.Function).name == "inputAndReload" then
                            v4.Function()
                        end
                    end
                    gundelay = tick()
                end
            else
                if tick() - attackdelay >= Config["Misc"]["Click Delay"] then
                    pcall(function()
                        local ac = CombatFrameworkR.activeController
                        ac.hitboxMagnitude = 55
                        if ac and ac.equipped then
                            for indexincrement = 1, 1 do
                                local bladehit =require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60)
                                if #bladehit > 0 then
                                    local AcAttack8 = debug.getupvalue(ac.attack, 5)
                                    local AcAttack9 = debug.getupvalue(ac.attack, 6)
                                    local AcAttack7 = debug.getupvalue(ac.attack, 4)
                                    local AcAttack10 = debug.getupvalue(ac.attack, 7)
                                    local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                                    local NumberAc13 = AcAttack7 * 798405
                                    (function()
                                        NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                                        AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                                        AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                                    end)()
                                    AcAttack10 = AcAttack10 + 1
                                    debug.setupvalue(ac.attack, 5, AcAttack8)
                                    debug.setupvalue(ac.attack, 6, AcAttack9)
                                    debug.setupvalue(ac.attack, 4, AcAttack7)
                                    debug.setupvalue(ac.attack, 7, AcAttack10)
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then
                                        Animation.AnimationId = ac.anims.basic[2]
                                        ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", str(CurrentWeapon()))
                                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                                    end
                                end
                            end
                        end
                        attackdelay = tick()
                    end)
                end
            end
        else
            return
        end
    end
spawn(function()
    while wt() do
        if attackbool then
            Attack()
        end
    end
end)
lp.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wt(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)        