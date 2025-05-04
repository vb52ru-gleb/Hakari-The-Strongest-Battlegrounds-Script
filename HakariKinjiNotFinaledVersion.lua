local CAS = game:GetService("ContextActionService")

CAS:UnbindAction("Teleportation")
CAS:UnbindAction("Dash")

local dashes = 5
local tps = 5

--Move & Ultimate Names

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("1").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Rough Energy"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Lucky Volley"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName

baseButton.Parent.Visible = true

ToolName.Text = "Fever Breaker"

local Reuse = baseButton:FindFirstChild("Reuse")
Reuse.Text = "3 + 1 VARIANT"
Reuse.Visible = true
local Reuse = Reuse:FindFirstChild("Reuse")
Reuse.Text = "3 + 1 VARIANT"
Reuse.Visible = true


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Big Win"


local ultbarcolor = Color3.fromRGB(0,255,0)
local Ultname = "Restless Gambler"

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui


local function findGuiAndSetText()
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if screenGui then
        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then
            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
			local healthframe = magicHealthFrame:FindFirstChild("Health")
            if textLabel then
                textLabel.Text = Ultname
            end
			if healthframe then 
				local Bar = healthframe:FindFirstChild("Bar")
				local Bar2 = Bar:FindFirstChild("Bar")
				if Bar and Bar2 then
					Bar2.ImageColor3 = ultbarcolor
				end
			end
        end
    end
end

playerGui.DescendantAdded:Connect(findGuiAndSetText)

findGuiAndSetText()

-------------------------------------------------
local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local LocalScript = backpack:FindFirstChildOfClass("LocalScript")

local cooldown = LocalScript.Cooldown

function AddCooldownFrame(number: number, length: number)
	local baseButtonbyn = hotbarFrame:FindFirstChild(number).Base

	local cooldownframe = cooldown:Clone()
	cooldownframe.Parent = baseButtonbyn
	
	local tw = game:GetService("TweenService")
	tw:Create(cooldownframe, TweenInfo.new(length), {Size = UDim2.new(1, 0, 0 ,0)}):Play()

	task.delay(length, function()
		cooldownframe:Destroy()
	end)
end
-------------------------------------------------

--[[Animations]]

--[[Move 1]]

local animationId = 10468665991


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

--------------------------------------------------------------

function AddParticleOnLimb(limbname:string)
	local limb = character:FindFirstChild(limbname)
	local particle = Instance.new("ParticleEmitter", limb)
	particle.Parent = limb
	particle.Name = "CursedGamblerEnergy"

	particle.Brightness = 5
	particle.Color = ColorSequence.new(Color3.new(0,1))
	particle.LightEmission = 0
	particle.LightInfluence = 0
	particle.Orientation = Enum.ParticleOrientation.FacingCamera
	particle.Size = NumberSequence.new(1)
	particle.Squash = NumberSequence.new(0)
	particle.Texture = "rbxassetid://17863940342"
	particle.Transparency = NumberSequence.new(0,.5)
	particle.ZOffset = 1

	particle.EmissionDirection = Enum.NormalId.Bottom
	particle.Enabled = true
	particle.Lifetime = NumberRange.new(1.5,1.5)
	particle.Rate = 25
	particle.Rotation = NumberRange.new(0,0)
	particle.RotSpeed = NumberRange.new(0,0)
	particle.Speed = NumberRange.new(.1,.1)
	particle.SpreadAngle = Vector2.new(110,110)

	particle.Shape = Enum.ParticleEmitterShape.Box
	particle.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
	particle.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume

	particle.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
	particle.FlipbookFramerate = NumberRange.new(15,15)
	particle.FlipbookMode = Enum.ParticleFlipbookMode.Loop
	particle.FlipbookStartRandom = false

	particle.Acceleration = Vector3.zero
	particle.Drag = 7
	particle.LockedToPart = true
	particle.TimeScale = 1
	particle.VelocityInheritance = 0
	particle.WindAffectsDrag = false

	wait(.75)

	particle.Enabled = false

	game.Debris:AddItem(particle,5)
end

--------------------------------------------------------------



local function onAnimationPlayed(animationTrack)

	if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then


		local p = game.Players.LocalPlayer

		local Humanoid = p.Character:WaitForChild("Humanoid")


		for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end


		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://12272894215"

		local Anim = Humanoid:LoadAnimation(AnimAnim)
		Anim.Priority = Enum.AnimationPriority.Action4

		local startTime = 0

		coroutine.wrap(AddParticleOnLimb)("Left Arm")

		Anim:Play()

		Anim:AdjustSpeed(0.1)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(0.9)
	end

end

--[[END OF MOVE 1 ANIM]]

--[[Move 2]]


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10466974800


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

--------------------------------------------------------------

function AddParticleOnLimb(limbname:string)
	local limb = character:FindFirstChild(limbname)
	local particle = Instance.new("ParticleEmitter", limb)
	particle.Parent = limb
	particle.Name = "CursedGamblerEnergy"

	particle.Brightness = 5
	particle.Color = ColorSequence.new(Color3.new(0,1))
	particle.LightEmission = 0
	particle.LightInfluence = 0
	particle.Orientation = Enum.ParticleOrientation.FacingCamera
	particle.Size = NumberSequence.new(1)
	particle.Squash = NumberSequence.new(0)
	particle.Texture = "rbxassetid://17863940342"
	particle.Transparency = NumberSequence.new(0,.5)
	particle.ZOffset = 1

	particle.EmissionDirection = Enum.NormalId.Bottom
	particle.Enabled = true
	particle.Lifetime = NumberRange.new(1.5,1.5)
	particle.Rate = 25
	particle.Rotation = NumberRange.new(0,0)
	particle.RotSpeed = NumberRange.new(0,0)
	particle.Speed = NumberRange.new(.1,.1)
	particle.SpreadAngle = Vector2.new(110,110)

	particle.Shape = Enum.ParticleEmitterShape.Box
	particle.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
	particle.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume

	particle.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
	particle.FlipbookFramerate = NumberRange.new(15,15)
	particle.FlipbookMode = Enum.ParticleFlipbookMode.Loop
	particle.FlipbookStartRandom = false

	particle.Acceleration = Vector3.zero
	particle.Drag = 7
	particle.LockedToPart = true
	particle.TimeScale = 1
	particle.VelocityInheritance = 0
	particle.WindAffectsDrag = false

	wait(.75)

	particle.Enabled = false

	game.Debris:AddItem(particle,5)
end

--------------------------------------------------------------


local function onAnimationPlayed(animationTrack)

	if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then


		local p = game.Players.LocalPlayer

		local Humanoid = p.Character:WaitForChild("Humanoid")


		for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end


		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://12971270638"

		local Anim = Humanoid:LoadAnimation(AnimAnim)
		Anim.Priority = Enum.AnimationPriority.Action4

		local startTime = 0

		coroutine.wrap(AddParticleOnLimb)("Right Arm")
		coroutine.wrap(AddParticleOnLimb)("Left Arm")


		Anim:Play()

		Anim:AdjustSpeed(1)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(1)


	end

end

--[[END OF MOVE 2 ANIM]]

--[[Move 3]]

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local root = Character:FindFirstChild("HumanoidRootPart")

local function ReturnOpposite()
	local AnimAnim = Instance.new("Animation")

	AnimAnim.AnimationId = "rbxassetid://13376869471"

	local Anim = humanoid:LoadAnimation(AnimAnim)
	Anim.Priority = Enum.AnimationPriority.Action4

	local startTime = 0


	Anim:Play()

	Anim:AdjustSpeed(0.1)

	Anim.TimePosition = startTime

	Anim:AdjustSpeed(0.9)

	delay(.75, function()
		Anim:Stop()
	end)

	local direction = root.CFrame.LookVector
	local maxvelocity = 280
	local curvelocity = maxvelocity

	local velocity = Instance.new("BodyVelocity", root)
	velocity.Velocity = direction * curvelocity
	velocity.MaxForce = Vector3.new(1,0,1)*30000

	local multiplicator = 1

	for n = 1, 8 do
		multiplicator *= .7
		velocity.Velocity = root.CFrame.LookVector * (curvelocity * multiplicator)
		wait(.1)
	end

	velocity:Destroy()
end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10471336737



local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

	if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then


		local p = game.Players.LocalPlayer

		local Humanoid = p.Character:WaitForChild("Humanoid")


		for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end


		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://12509505723"

		local Anim = Humanoid:LoadAnimation(AnimAnim)
		Anim.Priority = Enum.AnimationPriority.Action4

		local startTime = 0.3


		Anim:Play()

		Anim:AdjustSpeed(0)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(1.2)

		fb_used = true

		task.wait(.6)

		spawn(ReturnOpposite)

		task.wait(.45)


		local container = Instance.new("Part", workspace)
		container.Size = Vector3.new(24.415, 8.064, 8.064)
		container.Massless = true

		local mesh = Instance.new("SpecialMesh", container)
		mesh.MeshId    = "rbxassetid://1218948403"
		mesh.TextureId = "rbxassetid://1220201175"

		container.Anchored = false
		container.CanCollide = false
		container.CanTouch = false
		container.CanQuery = false
		container.Parent = workspace
		container.CFrame = root.CFrame

		delay(.5, function()
			container.CanCollide = true
		end)

		local particle = Instance.new("ParticleEmitter", container)
		particle.Parent = container
		particle.Name = "Strike"

		particle.Brightness = 5
		particle.Color = ColorSequence.new(Color3.new(0,1))
		particle.LightEmission = 2
		particle.LightInfluence = 0
		particle.Orientation = Enum.ParticleOrientation.FacingCamera
		particle.Size = NumberSequence.new(5)
		particle.Squash = NumberSequence.new(0)
		particle.Texture = "rbxassetid://18522282467"
		particle.Transparency = NumberSequence.new(0)
		particle.ZOffset = 2

		particle.EmissionDirection = Enum.NormalId.Front
		particle.Enabled = true
		particle.Lifetime = NumberRange.new(1,1)
		particle.Rate = 100
		particle.Rotation = NumberRange.new(-360,360)
		particle.RotSpeed = NumberRange.new(0,0)
		particle.Speed = NumberRange.new(.1,.1)
		particle.SpreadAngle = Vector2.new(110,110)

		particle.Shape = Enum.ParticleEmitterShape.Box
		particle.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
		particle.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume

		particle.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
		particle.FlipbookFramerate = NumberRange.new(15,15)
		particle.FlipbookMode = Enum.ParticleFlipbookMode.Loop
		particle.FlipbookStartRandom = false

		particle.Acceleration = Vector3.zero
		particle.Drag = 7
		particle.LockedToPart = true
		particle.TimeScale = 1
		particle.VelocityInheritance = 0
		particle.WindAffectsDrag = false

		local highlight = Instance.new("Highlight", container)
		highlight.Adornee = container
		highlight.DepthMode = Enum.HighlightDepthMode.Occluded
		highlight.Enabled = true
		highlight.FillColor = Color3.new(0.0666667, 1, 0)
		highlight.OutlineColor = Color3.new(0.0666667, 1, 0)
		highlight.FillTransparency = 0.8
		highlight.OutlineTransparency = .4

		local sound = Instance.new("Sound", container)
		sound.Parent = container
		sound.SoundId = "rbxassetid://"..9116546593
		sound.Volume = 5

		sound:Play()

		container.Velocity = container.CFrame.LookVector * 200 + Vector3.new(0,50,0)

		game.Debris:AddItem(container, 7.5)


	end
end

--[[END OF MOVE 3 ANIM]]

--[[Move 4]]


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 12510170988


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

--------------------------------------------------------

local root = character:FindFirstChild("HumanoidRootPart")

local tw = game:GetService("TweenService")

local defaultcframe = Vector3.new(0,-3,0)
local scale = Vector3.one * 1
local animlength = 1.7
local color = Color3.new(1, 1, 1)

function CreateShockwave(cframep: Vector3)
	local sw = Instance.new("Part", workspace)
	local pos = root.Position + cframep
	sw.CFrame = CFrame.new(pos, pos - (Vector3.new(0,5000,0) + cframep))
	sw.Size = scale
	
	sw.Anchored = true
	sw.Color = color
	sw.CanCollide = false
	sw.CanTouch = false
	sw.CanQuery = false
	
	local mesh = Instance.new("SpecialMesh", sw)
	mesh.Name = "Shockwavemeshbyrobloxcorporationanddavidbaszucki"
	mesh.Scale = scale * 4.5
	
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	
	local sound = Instance.new("Sound", sw)
	sound.PlaybackSpeed = 1.4
	sound.SoundId = "rbxassetid://9120769331"
	sound.Volume = 3
	
	sound:Play()
	
	tw:Create(mesh, TweenInfo.new(animlength), {Scale = scale * 27}):Play()
	tw:Create(sw,   TweenInfo.new(animlength) , {Transparency = 1}):Play()

	wait(5)

	sw:Destroy()
end

-----------------------------------

local function onAnimationPlayed(animationTrack)

	if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

		local p = game.Players.LocalPlayer

		local Humanoid = p.Character:WaitForChild("Humanoid")


		for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end


		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://17857788598"

		local Anim = Humanoid:LoadAnimation(AnimAnim)
		Anim.Priority = Enum.AnimationPriority.Action4

		local startTime = 0


		Anim:Play()

		Anim:AdjustSpeed(0)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(1)

		task.wait(.5)

		Anim:Stop()

		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://136370737633649"

		local Anim = Humanoid:LoadAnimation(AnimAnim)


		local startTime = 1.25


		Anim:Play()

		Anim:AdjustSpeed(0)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(1)
		coroutine.wrap(CreateShockwave)(defaultcframe)

		wait(.65)

		Anim:Stop()



	end

end

--[[END OF MOVE 4 ANIM]]

--[[Wall combo]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 15955393872


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

	if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

		local p = game.Players.LocalPlayer

		local Humanoid = p.Character:WaitForChild("Humanoid")


		for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end


		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://15943915877"

		local Anim = Humanoid:LoadAnimation(AnimAnim)
		Anim.Priority = Enum.AnimationPriority.Action4

		local startTime = 0.05


		Anim:Play()

		Anim:AdjustSpeed(0)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(1)


	end

end

--[[END OF WALL COMBO ANIM]]

--[[Ult Activation]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 12447707844


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

	if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

		local p = game.Players.LocalPlayer

		local Humanoid = p.Character:WaitForChild("Humanoid")


		for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

			animTrack:Stop()

		end


		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = "rbxassetid://17106858586"

		local Anim = Humanoid:LoadAnimation(AnimAnim)


		local startTime = 0


		Anim:Play()

		Anim:AdjustSpeed(0)

		Anim.TimePosition = startTime

		Anim:AdjustSpeed(1)

		wait(2)

		local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("1").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Counter"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Explosion"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName

baseButton.Parent.Visible = true

ToolName.Text = "Crater Punch"

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Luckiest Volley"

	end

end
--[[END OF ULT ACTIVATION ANIM]]

--[[Dash]]
--[[
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 10479335397
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://13294790250"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(1.3)
 
 
delay(1.8, function()
 
    Anim:Stop()
 
end)
 
 
    end
 
end
 
--[[END OF DASH ANIM]]

--[[Uppercut]]
--[[
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 10503381238
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://14900168720"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 1.3
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(0.7)
 
 
    end
 
end
 
--[[END OF UPPERCUT ANIM]]

--[[Downslam]]
 --[[
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 10470104242
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://12447247483"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0
 
 
wait(0.2)
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(6)
 
 
    end
 
end
 
--[[END OF DOWNSLAM ANIM]]

--[[Punch anims]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local Players = game:GetService("Players")

local player = Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

----------------------------------------

local Character = character
local twns = game:GetService("TweenService")

function getlimb(name: string)
	for i, child in pairs(Character:GetChildren()) do
		if child.Name == name and child:IsA("BasePart") then
			return child
		end
	end
end

local color = Color3.fromRGB(0, 255, 0)
local effectextrasize = 0.05
local vone = Vector3.one
local extrasize = vone * effectextrasize

function AddEffect(Limbname: string)
	local limb = getlimb(Limbname)

	local parteffect = Instance.new("Part", limb)
	parteffect.Name = "Effective_Part"
	parteffect.Size = limb.Size + extrasize
	parteffect.CanCollide = false
	parteffect.CanTouch = false
	parteffect.CanQuery = false

	parteffect.Color = color
	parteffect.Transparency = .25

	parteffect.TopSurface    = Enum.SurfaceType.Smooth
	parteffect.BottomSurface = Enum.SurfaceType.Smooth

	local limbWeld = Instance.new("Weld", limb)
	limbWeld.Part0 = limb
	limbWeld.Part1 = parteffect

	twns:Create(parteffect, TweenInfo.new(1), {Transparency = 1}):Play()

	delay(1, function()
		parteffect:Destroy()
	end)
end


----------------------------------------

local animationIdsToStop = {

	[17859015788] = true, --downslam finisher

	[10469493270] = true, --punch1

	[10469630950] = true, --punch2

	[10469639222] = true, --punch3

	[10469643643] = true, --punch4

}


local replacementAnimations = {

	["10469493270"] = "rbxassetid://13532562418", --punch1

	["10469630950"] = "rbxassetid://15240216931", --punch2

	["10469639222"] = "rbxassetid://17889471098", --punch3

	["10469643643"] = "rbxassetid://16552234590", --punch4

	["17859015788"] = "rbxassetid://12684185971", --downslam finisher

	["11365563255"] = "rbxassetid://14516273501" --punch idk

}

local Limb = {

	["10469493270"] = "Right Arm", --punch1

	["10469630950"] = "Right Left Arm", --punch2

	["10469639222"] = "Right Leg", --punch3

	["10469643643"] = "Right Left Arm", --punch4

	["17859015788"] = "Right Arm", --downslam finisher

	["11365563255"] = "Right Arm" --punch idk

}


local queue = {}

local isAnimating = false


local function playReplacementAnimation(animationId)

	if isAnimating then

		table.insert(queue, animationId)

		return

	end



	isAnimating = true

	local replacementAnimationId = replacementAnimations[tostring(animationId)]
	local limbttt = Limb[tostring(animationId)]

	if replacementAnimationId then

		local AnimAnim = Instance.new("Animation")

		AnimAnim.AnimationId = replacementAnimationId

		local Anim = humanoid:LoadAnimation(AnimAnim)
		Anim.Priority = Enum.AnimationPriority.Action4
		Anim:Play()
		Anim:AdjustSpeed(1.3)

		if limbttt == "Right Left Arm" then
			AddEffect("Right Arm")
			AddEffect("Left Arm")
		else
			AddEffect(limbttt)
		end



		Anim.Stopped:Connect(function()

			isAnimating = false

			if #queue > 0 then

				local nextAnimationId = table.remove(queue, 1)

				playReplacementAnimation(nextAnimationId)

			end

		end)

	else

		isAnimating = false

	end

end


local function stopSpecificAnimations()

	for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do

		local animationId = tonumber(track.Animation.AnimationId:match("%d+"))

		if animationIdsToStop[animationId] then

			track:Stop()

		end

	end

end


local function onAnimationPlayed(animationTrack)

	local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))

	if animationIdsToStop[animationId] then

		stopSpecificAnimations()

		animationTrack:Stop()



		local replacementAnimationId = replacementAnimations[tostring(animationId)]

		if replacementAnimationId then

			playReplacementAnimation(animationId)

		end

	end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local function onBodyVelocityAdded(bodyVelocity)

	if bodyVelocity:IsA("BodyVelocity") then

		bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)

	end

end


character.DescendantAdded:Connect(onBodyVelocityAdded)


for _, descendant in pairs(character:GetDescendants()) do

	onBodyVelocityAdded(descendant)

end


player.CharacterAdded:Connect(function(newCharacter)

	character = newCharacter

	humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	character.DescendantAdded:Connect(onBodyVelocityAdded)



	for _, descendant in pairs(character:GetDescendants()) do

		onBodyVelocityAdded(descendant)

	end

end) 

--[[Adding Quote or Message when Executed]]

local player = game.Players.LocalPlayer
repeat wait() until player.Character
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Messages to send
local messages = {}

local function sendMessage(text)
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

for _, message in ipairs(messages) do
	sendMessage(message)
	wait(1) -- Wait time for each message
end

--[[END OF QUOTES]]

--[[Run Anim]]
--[[
local priority = Enum.AnimationPriority.Action
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
 
local animationId = "rbxassetid://252557606" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId
 
local animationTrack
local isMoving = false
 
local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
		animationTrack.Priority = priority
        animationTrack:Play()
    end
end
 
local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end
 
local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
 
onHumanoidChanged()
 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
 
local animationId = "rbxassetid://252557606" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId
 
local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
		animationTrack.Priority = priority
        animationTrack:Play()
    end
end
 
local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end
 
local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
 
onHumanoidChanged()
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
 
local animationId = "rbxassetid://252557606" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId
 
local animationTrack
local isMoving = false
 
local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
		animationTrack.Priority = priority
        animationTrack:Play()
    end
end
 
local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end
 
local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
 
onHumanoidChanged()
 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
 
local animationId = "rbxassetid://252557606" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId
 
local animationTrack
local isMoving = false
 
local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
		animationTrack.Priority = priority
        animationTrack:Play()
    end
end
 
local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end
 
local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
 
onHumanoidChanged()
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
 
local animationId = "rbxassetid://252557606" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId
 
local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
		animationTrack.Priority = priority
        animationTrack:Play()
    end
end
 
local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end
 
local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
 
onHumanoidChanged()
 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
 
local animationId = "rbxassetid://252557606" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId
 
local animationTrack
local isMoving = false
 
local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
		animationTrack.Priority = priority
        animationTrack:Play()
    end
end
 
local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end
 
local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end
 
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
 
onHumanoidChanged()
 
--[[RUN ANIM END]]

--[[Execute Anims (Animations when you execute script]]

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
	animTrack:Stop()
end

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://14611879113" -- Replace with your animation ID

local Anim = Humanoid:LoadAnimation(AnimAnim)

local startTime = 0.05

Anim:Play()
Anim:AdjustSpeed(0)
Anim.TimePosition = startTime
Anim:AdjustSpeed(1)

--[[END OF EXECUTE ANIMS]]

--[[Abilities]]

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("5").Base

local ToolName = baseButton.ToolName

baseButton.Parent.Visible = true

ToolName.Text = "Dash"

local Number = baseButton:FindFirstChild("Number")
Number.Text = "R"
local Number = Number:FindFirstChild("Number")
Number.Text = "R"

local Reuse = baseButton:FindFirstChild("Reuse")
Reuse.Text = "SPECIAL"
local Reuse = Reuse:FindFirstChild("Reuse")
Reuse.Text = "SPECIAL"

local Quantity = baseButton:FindFirstChild("Quantity")
Quantity.Text = dashes

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local canDash = true

local function Dash()
	if canDash == false or dashes <= 0 then return end
	canDash = false
	dashes -= 1
	local root = Character:FindFirstChild("HumanoidRootPart")

	local AnimAnim = Instance.new("Animation")

	AnimAnim.AnimationId = "rbxassetid://14046756619"

	local Anim = Humanoid:LoadAnimation(AnimAnim)
	Anim.Priority = Enum.AnimationPriority.Action4

	local startTime = 0


	Anim:Play()

	Anim:AdjustSpeed(0.1)

	Anim.TimePosition = startTime

	Anim:AdjustSpeed(0.9)

	delay(.75, function()
		Anim:Stop()
	end)

	local direction = root.CFrame.LookVector
	local maxvelocity = 275
	local curvelocity = maxvelocity

	local velocity = Instance.new("BodyVelocity", root)
	velocity.Velocity = direction * curvelocity
	velocity.MaxForce = Vector3.new(1,0,1)*30000

	local multiplicator = 1

	AddCooldownFrame(5, .925)

	for n = 1, 8 do
		multiplicator *= .7
		velocity.Velocity = root.CFrame.LookVector * (curvelocity * multiplicator)
		wait(.1)
	end

	velocity:Destroy()

	wait(.125)
	canDash = true
end

local CAS = game:GetService("ContextActionService")
local id_start = "rbxassetid://"

CAS:UnbindAction("Dash")
CAS:BindAction("Dash", Dash, true, Enum.KeyCode.R)
CAS:SetImage("Dash", id_start..422184304)
CAS:SetPosition("Dash", UDim2.new(.5,0,.5,0))

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("6").Base

local ToolName = baseButton.ToolName

baseButton.Parent.Visible = true

ToolName.Text = "Shadow Teleport"

local Number = baseButton:FindFirstChild("Number")
Number.Text = "E"
local Number = Number:FindFirstChild("Number")
Number.Text = "E"

local Reuse = baseButton:FindFirstChild("Reuse")
Reuse.Text = "Over Powered"
local Reuse = Reuse:FindFirstChild("Reuse")
Reuse.Text = "Over Powered"

local Quantity = baseButton:FindFirstChild("Quantity")
Quantity.Text = tps

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local mouse = Player:GetMouse()

local cantp = true

local function Teleportation()
	if cantp == false or tps <= 0 then return end
	cantp = false
	tps -= 1
	local targetcharacter = mouse.Target.Parent
	local h = targetcharacter:FindFirstChildOfClass("Humanoid")
	local AnimAnim = Instance.new("Animation")

	AnimAnim.AnimationId = "rbxassetid://15957361339"

	local Anim = Humanoid:LoadAnimation(AnimAnim)


	local startTime = 0


	Anim:Play()

	Anim:AdjustSpeed(0)

	Anim.TimePosition = startTime

	Anim:AdjustSpeed(1)
	if h ~= nil then
		local position = targetcharacter.HumanoidRootPart.Position
		player.Character:MoveTo(position)
	else
		local pos = mouse.Hit.Position
		Character:MoveTo(pos + Vector3.new(0, 5/2, 0))
	end
	AddCooldownFrame(6, .5)
	task.wait(.5)
	cantp = true
end

local CAS = game:GetService("ContextActionService")
local id_start = "rbxassetid://"

CAS:UnbindAction("Teleportation")
CAS:BindAction("Teleportation", Teleportation, true, Enum.KeyCode.E)
CAS:SetImage("Teleportation", id_start..422184304)
CAS:SetPosition("Teleportation", UDim2.new(.5,0,.5,0))

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("7").Base

local ToolName = baseButton.ToolName

baseButton.Parent.Visible = true

ToolName.Text = "Roll Coin"

local Number = baseButton:FindFirstChild("Number")
Number.Text = "T"
local Number = Number:FindFirstChild("Number")
Number.Text = "T"

local Reuse = baseButton:FindFirstChild("Reuse")
Reuse.Text = ""
local Reuse = Reuse:FindFirstChild("Reuse")
Reuse.Text = ""

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local torso = Character:FindFirstChild("Torso")
local mouse = Player:GetMouse()

local canroll = true



local function Roll()
	if canroll == false then return end
	canroll = false
	local function rollstats()
		local function SetStatRandom(stata)
			local oot = math.random(1,3)
			if oot == 1 or oot == 2 then
				stata = stata + math.random(1,5)
			else
				stata = stata - math.random(1,2)
			end
			return stata
		end


		local oneortwo = math.random(1,2)
		if oneortwo == 1 then
			dashes = SetStatRandom(dashes)
		elseif oneortwo == 2 then
			tps = SetStatRandom(tps)
		end
	end
	rollstats()
	local sound = Instance.new("Sound", torso)
	sound.Parent = torso
	sound.SoundId = "rbxassetid://"..8646410774
	sound.Volume = 5

	sound:Play()
	AddCooldownFrame(7,5)
	task.wait(5)
	sound:Destroy()
	canroll = true
end

local CAS = game:GetService("ContextActionService")
local id_start = "rbxassetid://"

CAS:UnbindAction("Roll")
CAS:BindAction("Roll", Roll, true, Enum.KeyCode.T)
CAS:SetImage("Roll", id_start..422184304)
CAS:SetPosition("Roll", UDim2.new(.5,0,.5,0))

while true do
	local player = game.Players.LocalPlayer

	local playerGui = player.PlayerGui

	local hotbar = playerGui:FindFirstChild("Hotbar")

	local backpack = hotbar:FindFirstChild("Backpack")

	local hotbarFrame = backpack:FindFirstChild("Hotbar")

	local baseButton = hotbarFrame:FindFirstChild("5").Base

	local Quantity = baseButton:FindFirstChild("Quantity")
	Quantity.Text = dashes

	local player = game.Players.LocalPlayer

	local playerGui = player.PlayerGui

	local hotbar = playerGui:FindFirstChild("Hotbar")

	local backpack = hotbar:FindFirstChild("Backpack")

	local hotbarFrame = backpack:FindFirstChild("Hotbar")

	local baseButton = hotbarFrame:FindFirstChild("6").Base

	local Quantity = baseButton:FindFirstChild("Quantity")
	Quantity.Text = tps
	wait()
end