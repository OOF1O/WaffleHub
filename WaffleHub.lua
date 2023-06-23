print("waffle hub")

local gui = Instance.new("ScreenGui")
gui.Name = "WaffleHub"
gui.Parent = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui')
gui.Enabled = true

local Frame = Instance.new("Frame")
Frame.Name = "MainFrame"
Frame.Parent = gui
Frame.Visible = true
Frame.Size = UDim2.new(0.3, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.new(0.05, 0.05, 0.05)

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "MainText"
TextLabel.Parent = Frame
TextLabel.Text = "Loading Waffle Hub..."
TextLabel.Visible = true
TextLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
TextLabel.TextScaled = true
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextXAlignment = "Left"
TextLabel.Position = UDim2.new(0.18, 0, 0, 0)

local Logo = Instance.new("ImageLabel")
Logo.Name = "Logo"
Logo.Parent = Frame
Logo.Image = "rbxassetid://13837877818"
Logo.ImageTransparency = 0
Logo.BackgroundTransparency = 1
Logo.Visible = true
Logo.Size = UDim2.new(0.17, 0, 0.2, 0)

print("GUI Done Intiazation")

TextLabel.Text = "Waffle Hub (Beta)"

local ExitButton = Instance.new("TextButton")
ExitButton.Name = "Exit"
ExitButton.Parent = Frame
ExitButton.Visible = true
ExitButton.Text = "X"
ExitButton.Position = UDim2.new(0.90, 0, 0.2, 0)
ExitButton.BackgroundColor3 = Color3.new(1, 0, 0)
ExitButton.Size = UDim2.new(0.1, 0, 0.1, 0)

local SpeedBox = Instance.new("TextBox")
SpeedBox.Name = "SpeedBox"
SpeedBox.Parent = Frame
SpeedBox.Visible = true
SpeedBox.Position = UDim2.new(0.05, 0, 0.25, 0)
SpeedBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SpeedBox.Size = UDim2.new(0.25, 0, 0.1, 0)
SpeedBox.Text = "Speed"

SpeedBox.FocusLost:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedBox.Text
end)

local JumpBox = Instance.new("TextBox")
JumpBox.Name = "JumpBox"
JumpBox.Parent = Frame
JumpBox.Visible = true
JumpBox.Position = UDim2.new(0.05, 0, 0.5, 0)
JumpBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
JumpBox.Size = UDim2.new(0.25, 0, 0.1, 0)
JumpBox.Text = "Jump Height"

JumpBox.FocusLost:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpHeight = JumpBox.Text
end)

local HealthBox = Instance.new("TextBox")
HealthBox.Name = "HealthBox"
HealthBox.Parent = Frame
HealthBox.Visible = true
HealthBox.Position = UDim2.new(0.05, 0, 0.75, 0)
HealthBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HealthBox.Size = UDim2.new(0.25, 0, 0.1, 0)
HealthBox.Text = "Health"

HealthBox.FocusLost:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = HealthBox.Text
end)

local MaxHealthBox = Instance.new("TextBox")
MaxHealthBox.Name = "HealthBox"
MaxHealthBox.Parent = Frame
MaxHealthBox.Visible = true
MaxHealthBox.Position = UDim2.new(0.35, 0, 0.75, 0)
MaxHealthBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MaxHealthBox.Size = UDim2.new(0.25, 0, 0.1, 0)
MaxHealthBox.Text = "Max Health"

MaxHealthBox.FocusLost:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = MaxHealthBox.Text
end)

local function Destroylol()
	gui:Destroy()
	script:Destroy()
end


ExitButton.Activated:Connect(Destroylol)
wait(0.1)

--print("Waffle Hub End")
--gui:Destroy()
--script:Destroy()