-- Gui to Lua
-- Version: 3.2

-- Instances:

local AdminAbuserSGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Command = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local Delayb = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Loop = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local Label = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local uidd = Instance.new("UIDragDetector")

local tws = game:GetService("TweenService")
local tinfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)

local mini = false
local db = false

local loopdisabled = Color3.fromRGB(255, 105, 105)
local loopenabled = Color3.fromRGB(20, 255, 40)
local loopstate = false

--Properties:

AdminAbuserSGUI.Name = "AdminAbuserSGUI"
AdminAbuserSGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AdminAbuserSGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AdminAbuserSGUI.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = AdminAbuserSGUI
Main.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.34840709, 0, 0.346975088, 0)
Main.Size = UDim2.new(0.303030312, 0, 0.306049824, 0)
uidd.Parent = Main

Command.Name = "Command"
Command.Parent = Main
Command.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Command.BorderColor3 = Color3.fromRGB(0, 0, 0)
Command.BorderSizePixel = 0
Command.Position = UDim2.new(0.046875, 0, 0.234999999, 0)
Command.Size = UDim2.new(0.90625, 0, 0.139534891, 0)
Command.ClearTextOnFocus = false
Command.Font = Enum.Font.FredokaOne
Command.PlaceholderText = "Command (;kill all)"
Command.Text = ""
Command.TextColor3 = Color3.fromRGB(255, 255, 255)
Command.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Command

Delayb.Name = "Delay"
Delayb.Parent = Main
Delayb.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Delayb.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delayb.BorderSizePixel = 0
Delayb.Position = UDim2.new(0.046875, 0, 0.475697726, 0)
Delayb.Size = UDim2.new(0.431250006, 0, 0.139534891, 0)
Delayb.Font = Enum.Font.FredokaOne
Delayb.PlaceholderText = "Delay (ms)"
Delayb.Text = "100"
Delayb.TextColor3 = Color3.fromRGB(255, 255, 255)
Delayb.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Delayb

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(32, 132, 255)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.046875, 0, 0.721395254, 0)
Execute.Size = UDim2.new(0.90625, 0, 0.156976745, 0)
Execute.Font = Enum.Font.FredokaOne
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Execute

Loop.Name = "Loop"
Loop.Parent = Main
Loop.BackgroundColor3 = Color3.fromRGB(255, 105, 105)
Loop.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loop.BorderSizePixel = 0
Loop.Position = UDim2.new(0.521875024, 0, 0.475697726, 0)
Loop.Size = UDim2.new(0.431250006, 0, 0.139534891, 0)
Loop.Font = Enum.Font.FredokaOne
Loop.Text = "Loop [DISABLED]"
Loop.TextColor3 = Color3.fromRGB(255, 255, 255)
Loop.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Loop

UICorner_5.Parent = Main

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(1, 0, 0.116279073, 0)
Label.Font = Enum.Font.FredokaOne
Label.Text = "   HDAdminAbuser"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000
Label.TextXAlignment = Enum.TextXAlignment.Left

Label.MouseButton1Click:Connect(function()
	if not db then
    	if mini == false then
      		mini = true
      		db = true
      		local twminimize = tws:Create(Main, tinfo, {Size = UDim2.new(0.162, 0, 0.174, 0)})
      		twminimize:Play()
      		local ct = tws:Create(Command, tinfo, {TextSize = 8})
      		local dt = tws:Create(Delayb, tinfo, {TextSize = 8})
      		local et = tws:Create(Execute, tinfo, {TextSize = 8})
      		local lt = tws:Create(Loop, tinfo, {TextSize = 8})
      		local lbt = tws:Create(Label, tinfo, {TextSize = 8})
      		ct:Play()
      		dt:Play()
      		et:Play()
      		lt:Play()
      		lbt:Play()
      		twminimize.Completed:Connect(function()
      	  		db = false
      		end)
		else
			mini = false
      		db = true
      		local twmaximize = tws:Create(Main, tinfo, {Size = UDim2.new(0.303030312, 0, 0.306049824, 0)})
      		local ct = tws:Create(Command, tinfo, {TextSize = 14})
      		local dt = tws:Create(Delayb, tinfo, {TextSize = 14})
      		local et = tws:Create(Execute, tinfo, {TextSize = 14})
      		local lt = tws:Create(Loop, tinfo, {TextSize = 14})
      		local lbt = tws:Create(Label, tinfo, {TextSize = 14})
      		ct:Play()
      		dt:Play()
      		et:Play()
      		lt:Play()
      		lbt:Play()
      		twmaximize:Play()
      		twmaximize.Completed:Connect(function()
        		db = false
			end)
		end
	end
end)

Execute.MouseButton1Click:Connect(function()
	if game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent then
		command = Command.Text
		print(command)
		game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent:InvokeServer(command)
	else
		Label.Text = 'This game does not have HDAdmin or it\'s not loaded yet.'
		wait(3)
		Label.Text = "   HDAdminAbuser"
	end
end)

Loop.MouseButton1Click:Connect(function()
	if not loopstate then
		loopstate = true
		Loop.BackgroundColor3 = loopenabled
		while loopstate do
			if game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent then
				command = Command.Text
				game:GetService("ReplicatedStorage").HDAdminHDClient.Signals.RequestCommandSilent:InvokeServer(command)
			end
			task.wait(Delayb.Text / 1000)
		end
	else
		loopstate = false
		Loop.BackgroundColor3 = loopdisabled
	end
end)

UICorner_6.Parent = Label
