local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Mad City |discord.gg/KXxfRcRPgR | Hello ".. game.Players.LocalPlayer.Name)

local serv = win:Server("Ukanda hub", "")

local AutoFarming = serv:Channel("Main")

local Other = serv:Channel("Other")

AutoFarming:Toggle(
    "Auto XP",
    false,
    function(bool)
        xp = bool
if xp then
pcall(function()
spawn(function()
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SetTeam", "Police")
end)
wait(.75)
game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if v.Name == "Handcuffs" then v.Parent = game:GetService("Players").LocalPlayer.Character
   end
end
game:GetService("ReplicatedStorage").Event:FireServer("Eject", game:GetService("Players").LocalPlayer)
end)
end)
while wait(5) do
game:GetService("Workspace")[game.Players.LocalPlayer.Name].Head:Destroy()
end
end
    end
)
AutoFarming:Toggle(
    "Walk On Water",
    false,
    function(bool)
        wal1 = bool
if wal1 then
for k,v in pairs(game:GetService("Workspace").Water:GetChildren()) do
   v.CanCollide = true
   v.Anchored = true
   v.Material = "Ice"
end
end
if not wal1 then
for k,v in pairs(game:GetService("Workspace").Water:GetChildren()) do
   v.CanCollide = false
   v.Anchored = false
   v.Material = "Ice"
end
end
    end
)
AutoFarming:Toggle(
    "Drive On Water",
    false,
    function(bool)
        wal2 = bool
if wal2 then
game:GetService("Workspace").ObjectSelection[game.Players.LocalPlayer.Name .. "'s Vehicle"].CarChassis.HoverMode.Value = true
end
if not wal2 then
game:GetService("Workspace").ObjectSelection[game.Players.LocalPlayer.Name .. "'s Vehicle"].CarChassis.HoverMode.Value = false
end
    end
)
AutoFarming:Button(
    "AUTO FARM",
    function()
loadstring(game:HttpGet('https://pastebin.com/raw/YB4hsG56'))()
    end
)

AutoFarming:Button(
    "COPY DISCORD SERVER",
    function()
setclipboard("https://discord.gg/KXxfRcRPgR")
    end
)

Other:Toggle(
    "Fly [F]",
    false,
    function(bool)
        wal3 = bool
if wal3 then
repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 5000 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.10+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end
    end
)

Other:Toggle(
    "Speed [X]",
    false,
    function(bool)
        wal4 = bool
if wal4 then
local walkspeedplayer = game:GetService("Players").LocalPlayer
    local walkspeedmouse = walkspeedplayer:GetMouse()
 
    local walkspeedenabled = false
 
    function x_walkspeed(key)
        if (key == "x") then
            if walkspeedenabled == false then
                _G.WS = 200;
                local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                Humanoid.WalkSpeed = _G.WS;
                end)
                Humanoid.WalkSpeed = _G.WS;
 
                walkspeedenabled = true
            elseif walkspeedenabled == true then
                _G.WS = 20;
                local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                Humanoid.WalkSpeed = _G.WS;
                end)
                Humanoid.WalkSpeed = _G.WS;
 
                walkspeedenabled = false
            end
        end
    end
 
    walkspeedmouse.KeyDown:connect(x_walkspeed)
    end
    end
)
Other:Toggle(
    "Noclip [E]",
    false,
    function(bool)
        wal5 = bool
if wal5 then
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end
    end
)
Other:Toggle(
    "Teleport [B]",
    false,
    function(bool)
        wal6 = bool
if wal6 then
plr = game.Players.LocalPlayer
 
hum = plr.Character.HumanoidRootPart
 
mouse = plr:GetMouse()
 
 
 
mouse.KeyDown:connect(function(key)
 
if key == "b" then
 
if mouse.Target then
 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
 
end
 
end
end)
end
    end
)
Other:Toggle(
    "INF Jump",
    false,
    function(bool)
        wal7 = bool
if wal7 then
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
local InfiniteJump = CreateButton("Infinite Jump: Off", StuffFrame)
InfiniteJump.Position = UDim2.new(0,10,0,130)
InfiniteJump.Size = UDim2.new(0,150,0,30)
InfiniteJump.MouseButton1Click:connect(function()
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
	local new = state == "Off" and "On" or state == "On" and "Off"
	InfiniteJumpEnabled = new == "On"
	InfiniteJump.Text = "Infinite Jump: " .. new
end)
end
    end
)
Other:Button(
    "Fps Boost",
    function()
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
for i,v in pairs(g:GetDescendants()) do
   if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
       v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
   end
end
for i,e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
    end
)
Other:Button(
    "COPY DISCORD SERVER",
    function()
setclipboard("https://discord.gg/EPTHrbcvH2")
    end
)