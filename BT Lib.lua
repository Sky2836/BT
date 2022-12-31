-- BLACKTRAP UI v1.4
-- Still on Project

-- Service
if game.CoreGui:FindFirstChild("BlackTrap") then
	game.CoreGui:FindFirstChild("BlackTrap"):Destroy()
end
local Blacklib = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- init --
local LocalizationService = game:GetService("LocalizationService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

function Blacklib:Window(version)
    -- ScreenGui
	local BlackTrap = Instance.new("ScreenGui")
	BlackTrap.Name = "BlackTrap"
	BlackTrap.Parent = game.CoreGui

	-- Instance :
	local Points = Instance.new("Frame")
	local WindowFrame = Instance.new("Frame")
	local TopFrame = Instance.new("Frame")
	local BlackImage = Instance.new("ImageLabel")
	local BlackTitle = Instance.new("TextLabel")
	local CloseButton = Instance.new("ImageButton")
	local Minimize = Instance.new("ImageButton")
	local TabWindow = Instance.new("ScrollingFrame")
	local TabWindowList = Instance.new("UIListLayout")
	local ContainerHold = Instance.new("Frame")
	local ContainerItem = Instance.new("Folder")
	local SettingButton = Instance.new("ImageButton")

	--Properties:
	Points.Name = "Points"
	Points.Parent = BlackTrap
	Points.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Points.BackgroundTransparency = 1.000
	Points.Size = UDim2.new(0, 1083, 0, 600)

	WindowFrame.Name = "WindowFrame"
	WindowFrame.Parent = Points
	WindowFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	WindowFrame.BorderColor3 = Color3.fromRGB(190, 190, 190)
	WindowFrame.BorderSizePixel = 0
	WindowFrame.ClipsDescendants = true
	WindowFrame.Position = UDim2.new(0, 220, 0, 50)
	WindowFrame.Size = UDim2.new(0, 550, 0, 0)
	WindowFrame:TweenSize(UDim2.new(0, 550, 0, 350), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, .6, true)

	TopFrame.Name = "TopFrame"
	TopFrame.Parent = WindowFrame
	TopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopFrame.BorderSizePixel = 0
	TopFrame.Size = UDim2.new(0, 550, 0, 30)

	BlackImage.Name = "BlackImage"
	BlackImage.Parent = TopFrame
	BlackImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BlackImage.BackgroundTransparency = 1.000
	BlackImage.Position = UDim2.new(0.0138433138, 0, 0.0780128166, 0)
	BlackImage.Size = UDim2.new(0, 25, 0, 25)
	BlackImage.Image = "http://www.roblox.com/asset/?id=11839676800"
	BlackImage.ImageColor3 = Color3.fromRGB(202, 202, 202)

	BlackTitle.Name = "BlackTitle"
	BlackTitle.Parent = TopFrame
	BlackTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BlackTitle.BackgroundTransparency = 1.000
	BlackTitle.Position = UDim2.new(0.0795286521, 0, 0.0458333418, 0)
	BlackTitle.Size = UDim2.new(0, 300, 0, 30)
	BlackTitle.Font = Enum.Font.SourceSansBold
	BlackTitle.Text = "BLACKTRAP "..version
	BlackTitle.TextColor3 = Color3.fromRGB(31, 31, 31)
	BlackTitle.TextSize = 16.000
	BlackTitle.TextXAlignment = Enum.TextXAlignment.Left

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = TopFrame
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0, 525, 0, 3)
	CloseButton.Size = UDim2.new(0, 22, 0, 22)
	CloseButton.Image = "http://www.roblox.com/asset/?id=8546705275"

	Minimize.Name = "Minimize"
	Minimize.Parent = TopFrame
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minimize.BackgroundTransparency = 1.000
	Minimize.BorderSizePixel = 0
	Minimize.Position = UDim2.new(0, 500, 0, 3)
	Minimize.Size = UDim2.new(0, 22, 0, 22)
	Minimize.Image = "http://www.roblox.com/asset/?id=8546702233"

	SettingButton.Name = "SettingButton"
	SettingButton.Parent = TopFrame
	SettingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingButton.BackgroundTransparency = 1.000
	SettingButton.BorderSizePixel = 0
	SettingButton.Position = UDim2.new(0, 476, 0, 5)
	SettingButton.Size = UDim2.new(0, 20, 0, 19)
	SettingButton.Image = "http://www.roblox.com/asset/?id=11937378494"

	TabWindow.Name = "TabWindow"
	TabWindow.Parent = WindowFrame
	TabWindow.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	TabWindow.BackgroundTransparency = 1.000
	TabWindow.BorderSizePixel = 0
	TabWindow.Position = UDim2.new(-0.000702126243, 0, 0.108571425, 0)
	TabWindow.Size = UDim2.new(0, 150, 0, 0)
	TabWindow.ScrollBarThickness = 3
	TabWindow.ClipsDescendants = true

	wait(0.5)
	TabWindow:TweenSize(UDim2.new(0, 150, 0, 312), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 5, true)

	TabWindowList.Name = "TabWindowList"
	TabWindowList.Parent = TabWindow
	TabWindowList.SortOrder = Enum.SortOrder.LayoutOrder
	TabWindowList.Padding = UDim.new(0, 2)
	TabWindowList.VerticalAlignment = Enum.VerticalAlignment.Top
	TabWindowList.FillDirection = Enum.FillDirection.Vertical

	ContainerHold.Name = "ContainerHold"
	ContainerHold.Parent = WindowFrame
	ContainerHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContainerHold.BackgroundTransparency = 1.000
	ContainerHold.BorderSizePixel = 0
	ContainerHold.Position = UDim2.new(0.283636361, 0, 0.108571425, 0)
	ContainerHold.Size = UDim2.new(0, 394, 0, 312)

	ContainerItem.Name = "ContainerItem"
	ContainerItem.Parent = ContainerHold

	TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
	TabWindowList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		TabWindow.CanvasSize = UDim2.new(0, 0, 0, 0 + TabWindowList.AbsoluteContentSize.Y)
	end)

	-- Setting Added
	local SettingFrame = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local SettingLayout = Instance.new("UIListLayout")

	SettingFrame.Name = "SettingFrame"
	SettingFrame.Parent = WindowFrame
	SettingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	SettingFrame.BackgroundTransparency = 0.400
	SettingFrame.BorderSizePixel = 0
	SettingFrame.ClipsDescendants = true
	SettingFrame.Position = UDim2.new(0, 0, 0.0885714293, 0)
	SettingFrame.Size = UDim2.new(0, 550, 0, 319)
	SettingFrame.Visible = false

	ScrollingFrame.Parent = SettingFrame
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	ScrollingFrame.Position = UDim2.new(0.272487164, 0, 0.0540894121, 0)
	ScrollingFrame.Size = UDim2.new(0, 250, 0, 0)
	ScrollingFrame.ClipsDescendants = true
	ScrollingFrame.ScrollBarThickness = 0

	SettingLayout.Parent = ScrollingFrame
	SettingLayout.SortOrder = Enum.SortOrder.LayoutOrder
	SettingLayout.Padding = UDim.new(0, 5)
	SettingLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	SettingLayout.FillDirection = Enum.FillDirection.Vertical

	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0 + SettingLayout.AbsoluteContentSize.Y)
	SettingLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0 + SettingLayout.AbsoluteContentSize.Y)
	end)

	local settog = true
	
	SettingButton.MouseLeave:Connect(function()
	    TweenService:Create(SettingButton, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 20, 0, 19)}):Play()
	end)
    SettingButton.MouseEnter:Connect(function()
        TweenService:Create(SettingButton, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 19, 0, 18)}):Play()
    end)

	SettingButton.MouseButton1Click:Connect(function ()
		if settog == true then
			SettingFrame.Visible = true
			game.TweenService:Create(ScrollingFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 250, 0, 290)}):Play()
		else
			game.TweenService:Create(ScrollingFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 250, 0, 0)}):Play()
			wait(.1)
			SettingFrame.Visible = false
		end
		settog = not settog
	end)

	-- Local Script
	local gui = WindowFrame
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	local mintog = false
	Minimize.MouseLeave:Connect(function()
	    TweenService:Create(Minimize, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 22, 0, 22)}):Play()
	end)
    
    Minimize.MouseEnter:Connect(function()
        TweenService:Create(Minimize, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 20, 0, 20)}):Play()
    end)
	
	Minimize.MouseButton1Click:Connect(function()
		if mintog == true then
		    settog = true
			game.TweenService:Create(WindowFrame, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 550, 0, 350)}):Play()
			wait(0.5)
			game.TweenService:Create(TabWindow, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = true}):Play()
			game.TweenService:Create(ContainerHold, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = true}):Play()
		else
		    settog = false
		    game.TweenService:Create(ScrollingFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 250, 0, 0)}):Play()
			SettingFrame.Visible = false
			game.TweenService:Create(WindowFrame, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 550, 0, 30)}):Play()
			game.TweenService:Create(TabWindow, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = false}):Play()
			game.TweenService:Create(ContainerHold, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = false}):Play()
		end
		mintog = not mintog
	end)
	
	CloseButton.MouseLeave:Connect(function()
	    TweenService:Create(CloseButton, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 22, 0, 22)}):Play()
	end)
    
    CloseButton.MouseEnter:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 20, 0, 20)}):Play()
    end)

	CloseButton.MouseButton1Click:Connect(function()
		game:GetService("CoreGui"):FindFirstChild("BlackTrap"):Destroy()
	end)

	function Blacklib:Button(text, callback)
		-- Instances:
		local Frame = Instance.new("Frame")
		local TextButton = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")

		--Properties:
		Frame.Parent = ScrollingFrame
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(0, 250, 0, 24)

		TextButton.Parent = Frame
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.Position = UDim2.new(0.200000003, 0, 0, 3)
		TextButton.Size = UDim2.new(0, 150, 0, 18)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 12.000
		TextButton.Text = text

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = TextButton
		-- Local Script
		local callBackDebounce = false
		TextButton.MouseEnter:Connect(function()
			TweenService:Create(TextButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 10.000}):Play()
			TweenService:Create(TextButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 150, 0, 16)}):Play()
		end)
		
		TextButton.MouseLeave:Connect(function()
			TweenService:Create(TextButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 12.000}):Play()
			TweenService:Create(TextButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 150, 0, 18)}):Play()
		end)
		
		TextButton.MouseButton1Click:Connect(function()
			if not callBackDebounce then
				callBackDebounce = true
				callback()
				wait(0.5)
				callBackDebounce = false
			end
		end)
	end
	
	function Blacklib:Textbox(text, textbox, callback)
		-- Instances:
		local Frame = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextBox = Instance.new("TextBox")
		--Properties:
		Frame.Parent = ScrollingFrame
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(0, 250, 0, 30)

		TextLabel.Parent = Frame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0, 5, 0, 3)
		TextLabel.Size = UDim2.new(0, 100, 0, 24)
		TextLabel.Font = Enum.Font.SourceSansBold
		TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
		TextLabel.TextSize = 14.000
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.Text = "• "..text

		TextBox.Parent = Frame
		TextBox.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
		TextBox.Position = UDim2.new(0, 140, 0, 3)
		TextBox.Size = UDim2.new(0, 100, 0, 24)
		TextBox.Font = Enum.Font.SourceSansBold
		TextBox.Text = ""
		TextBox.TextColor3 = Color3.fromRGB(180, 180, 180)
		TextBox.TextSize = 14.000
		TextBox.PlaceholderText = textbox or ""
		TextBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)

		-- Local Script
		TextBox.FocusLost:Connect(function()
			if not EnterPressed then
				callback(TextBox.Text)
				return
			end
			TextBox.Text = textbox
		end)
	end

	function Blacklib:Label(text)
		local labelfunc = {}
		local Frame = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
                
		-- Prop --
		Frame.Name = "Frame"
		Frame.Parent = ScrollingFrame
		Frame.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
		Frame.BackgroundTransparency = 0
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(0, 250, 0, 25)
                
		TextLabel.Name = "TextLabel"
		TextLabel.Parent = Frame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0, 0, 0, 2)
		TextLabel.Size = UDim2.new(0, 250, 0, 21)
		TextLabel.Font = Enum.Font.SourceSansBold
		TextLabel.Text = text
		TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.TextSize = 15.000
		-- Local Script
		function labelfunc:Refresh(newtext)
			TextLabel.Text = newtext
		end
		return labelfunc
	end

	function Blacklib:Notification(textdesc)
		local NotificationHold = Instance.new("TextButton")
		local NotificationFrame = Instance.new("Frame")
		local OkayBtn = Instance.new("TextButton")
		local OkayBtnCorner = Instance.new("UICorner")
		local OkayBtnTitle = Instance.new("TextLabel")
		local TitleFrame = Instance.new("Frame")
		local NotificationTitle = Instance.new("TextLabel")
		local ImageLabel = Instance.new("ImageLabel")
		local NotificationDesc = Instance.new("TextLabel")

		--Properties:
		NotificationHold.Name = "NotificationHold"
		NotificationHold.Parent = WindowFrame
		NotificationHold.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotificationHold.BackgroundTransparency = 0.400
		NotificationHold.BorderSizePixel = 0
		NotificationHold.Size = UDim2.new(0, 550, 0, 350)
		NotificationHold.AutoButtonColor = false
		NotificationHold.Font = Enum.Font.SourceSans
		NotificationHold.TextColor3 = Color3.fromRGB(0, 0, 0)
		NotificationHold.TextSize = 14.000
		NotificationHold.Text = ""
		TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.4}):Play()
		wait(0.4)

		NotificationFrame.Name = "NotificationFrame"
		NotificationFrame.Parent = NotificationHold
		NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		NotificationFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		NotificationFrame.BorderSizePixel = 0
		NotificationFrame.ClipsDescendants = true
		NotificationFrame.Position = UDim2.new(0, 275, 0, 175)
		NotificationFrame.Size = UDim2.new(0, 0, 0, 0)
		NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

		OkayBtn.Name = "OkayBtn"
		OkayBtn.Parent = NotificationFrame
		OkayBtn.BackgroundColor3 = Color3.fromRGB(182, 182, 182)
		OkayBtn.Position = UDim2.new(0.375, 0, 0.839999974, 0)
		OkayBtn.Size = UDim2.new(0, 100, 0, 30)
		OkayBtn.Font = Enum.Font.SourceSans
		OkayBtn.Text = ""
		OkayBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
		OkayBtn.TextSize = 14.000

		OkayBtnCorner.Name = "OkayBtnCorner"
		OkayBtnCorner.Parent = OkayBtn

		OkayBtnTitle.Name = "OkayBtnTitle"
		OkayBtnTitle.Parent = OkayBtn
		OkayBtnTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		OkayBtnTitle.BackgroundTransparency = 1.000
		OkayBtnTitle.BorderSizePixel = 0
		OkayBtnTitle.Size = UDim2.new(0, 100, 0, 30)
		OkayBtnTitle.Font = Enum.Font.SourceSansBold
		OkayBtnTitle.Text = "OK"
		OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
		OkayBtnTitle.TextSize = 18.000

		TitleFrame.Name = "TitleFrame"
		TitleFrame.Parent = NotificationFrame
		TitleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TitleFrame.BorderSizePixel = 0
		TitleFrame.Size = UDim2.new(0, 400, 0, 30)

		NotificationTitle.Name = "NotificationTitle"
		NotificationTitle.Parent = TitleFrame
		NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotificationTitle.BackgroundTransparency = 1.000
		NotificationTitle.BorderSizePixel = 0
		NotificationTitle.Position = UDim2.new(0.0925000012, 0, -0.0333333351, 0)
		NotificationTitle.Size = UDim2.new(0, 200, 0, 30)
		NotificationTitle.Font = Enum.Font.SourceSansBold
		NotificationTitle.Text = "Notification"
		NotificationTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
		NotificationTitle.TextSize = 16.000
		NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left

		ImageLabel.Parent = TitleFrame
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.0149999997, 0, 0.0666666701, 0)
		ImageLabel.Size = UDim2.new(0, 25, 0, 25)
		ImageLabel.Image = "http://www.roblox.com/asset/?id=11839676800"
		ImageLabel.ImageColor3 = Color3.fromRGB(207, 207, 207)

		NotificationDesc.Name = "NotificationDesc"
		NotificationDesc.Parent = NotificationFrame
		NotificationDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotificationDesc.BackgroundTransparency = 1.000
		NotificationDesc.BorderSizePixel = 0
		NotificationDesc.Position = UDim2.new(0.0250000004, 0, 0.155999988, 0)
		NotificationDesc.Size = UDim2.new(0, 380, 0, 160)
		NotificationDesc.Font = Enum.Font.SourceSansBold
		NotificationDesc.Text = textdesc
		NotificationDesc.TextColor3 = Color3.fromRGB(208, 208, 208)
		NotificationDesc.TextSize = 14.000
		NotificationDesc.TextXAlignment = Enum.TextXAlignment.Left
		NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

		-- Local Script
		OkayBtn.MouseEnter:Connect(function()
		    TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 25)}):Play()
		    TweenService:Create(OkayBtnTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 16.000}):Play()
		end)
	    
	    OkayBtn.MouseLeave:Connect(function()
	        TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 30)}):Play()
		    TweenService:Create(OkayBtnTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 18.000}):Play()
	    end)
        
		OkayBtn.MouseButton1Click:Connect(function()
			NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
			wait(0.4)
			TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
			wait(.3)
			NotificationHold:Destroy()
		end)
	end

	local Tabs = {}
	function Tabs:Tab(tabtitle, img)
		-- Instances:
		local TabCover = Instance.new("Frame")
		local TabFrame = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local TabImage = Instance.new("ImageLabel")
		local TabTitle = Instance.new("TextLabel")

		--Properties:
		TabCover.Name = "TabCover"
		TabCover.Parent = TabWindow
		TabCover.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabCover.BackgroundTransparency = 1.000
		TabCover.BorderSizePixel = 0
		TabCover.Size = UDim2.new(0, 150, 0, 30)

		TabFrame.Name = "TabFrame"
		TabFrame.Parent = TabCover
		TabFrame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
		TabFrame.BorderSizePixel = 0
		TabFrame.Position = UDim2.new(0.0497092679, 0, 0.115970865, 0)
		TabFrame.Size = UDim2.new(0, 137, 0, 30)
		TabFrame.Font = Enum.Font.SourceSans
		TabFrame.Text = ""
		TabFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabFrame.TextSize = 14.000
		
		UICorner.Parent = TabFrame
		UICorner.CornerRadius = UDim.new(0, 4)

		TabImage.Name = "TabImage"
		TabImage.Parent = TabFrame
		TabImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabImage.BackgroundTransparency = 1.000
		TabImage.BorderSizePixel = 0
		TabImage.Position = UDim2.new(0.0514988862, 0, 0.158571407, 0)
		TabImage.Size = UDim2.new(0, 20, 0, 20)
		TabImage.Image = img or "rbxasset://textures/ui/GuiImagePlaceholder.png"

		TabTitle.Name = "TabTitle"
		TabTitle.Parent = TabFrame
		TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTitle.BackgroundTransparency = 1.000
		TabTitle.BorderSizePixel = 0
		TabTitle.Position = UDim2.new(0.263437748, 0, -0.0014282465, 0)
		TabTitle.Size = UDim2.new(0, 100, 0, 30)
		TabTitle.Font = Enum.Font.SourceSansBold
		TabTitle.Text = tabtitle or "Tab Text Title"
		TabTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
		TabTitle.TextSize = 13.000
		TabTitle.TextXAlignment = Enum.TextXAlignment.Left

		-- Instances:
		local Container = Instance.new("ScrollingFrame")
		local ContainerLayout = Instance.new("UIListLayout")

		--Properties:
		Container.Name = "Container"
		Container.Parent = ContainerItem
		Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container.BackgroundTransparency = 1.000
		Container.BorderSizePixel = 0
		Container.Position = UDim2.new(-0.00507614203, 0, 0.00961538497, 0)
		Container.Size = UDim2.new(0, 396, 0, 309)
		Container.ScrollBarThickness = 0
		Container.Visible = false

		ContainerLayout.Name = "ContainerLayout"
		ContainerLayout.Parent = Container
		ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ContainerLayout.Padding = UDim.new(0, 10)
		
		-- Local Script
		local function UpdateSize()
			local cLt = ContainerLayout.AbsoluteContentSize
			game.TweenService:Create(Container, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CanvasSize = UDim2.new(0, 0, 0, cLt.Y)}):Play()
		end
		UpdateSize()
		Container.ChildAdded:Connect(UpdateSize)
		Container.ChildRemoved:Connect(UpdateSize)

		TabFrame.MouseButton1Click:Connect(function()
			for i,v in next, TabWindow:GetChildren() do
				if v:IsA('TextButton') then
					UpdateSize()
				end
			end
			for i,v in next, ContainerItem:GetChildren() do
				v.Visible = false
				UpdateSize()
			end
			wait(0.3)
			Container.Visible = true
			UpdateSize()
		end)

		local Section = {}
		function Section:NewSection(text)
			-- Instances:
			local SectionFrame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local SectionFrameHead = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local List_Left = Instance.new("Frame")
			local List_Right = Instance.new("Frame")
			local Left_Corner = Instance.new("UICorner")
			local Right_Corner = Instance.new("UICorner")

			--Properties:
			SectionFrame.Name = "SectionFrame"
			SectionFrame.Parent = Container
			SectionFrame.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
			SectionFrame.BackgroundTransparency = 1.000
			SectionFrame.BorderSizePixel = 0
			SectionFrame.ClipsDescendants = true
			SectionFrame.Size = UDim2.new(0, 387, 0, 20)

			UIListLayout.Parent = SectionFrame
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			SectionFrameHead.Name = "SectionFrameHead"
			SectionFrameHead.Parent = SectionFrame
			SectionFrameHead.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionFrameHead.BackgroundTransparency = 1.000
			SectionFrameHead.BorderSizePixel = 0
			SectionFrameHead.Size = UDim2.new(0, 387, 0, 20)

			TextLabel.Parent = SectionFrameHead
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0, 105, 0, 0)
			TextLabel.Size = UDim2.new(0, 177, 0, 20)
			TextLabel.Font = Enum.Font.SourceSansBold
			TextLabel.Text = text
			TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextLabel.TextSize = 16.000
			
			List_Left.Name = "List_Left"
			List_Left.Parent = SectionFrameHead
			List_Left.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
			List_Left.BorderSizePixel = 1.000
			List_Left.Position = UDim2.new(0, 0, 0, 8)
			List_Left.Size = UDim2.new(0, 100, 0, 4)
			
			Left_Corner.Parent = List_Left
			Left_Corner.CornerRadius = UDim.new(0, 10000)
			
			List_Right.Name = "List_Right"
			List_Right.Parent = SectionFrameHead
			List_Right.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
			List_Right.BorderSizePixel = 1.000
			List_Right.Position = UDim2.new(0, 287, 0, 8)
			List_Right.Size = UDim2.new(0, 100, 0, 4)
			
			Right_Corner.Parent = List_Right
			Right_Corner.CornerRadius = UDim.new(0, 10000)
			
			-- Local Script
			SectionFrame.Size = UDim2.new(0, 387, 0, 0 + UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)

			UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				SectionFrame.Size = UDim2.new(0, 387, 0, 0 + UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)
				UpdateSize()
			end)

			local ItemSection = {}
			function ItemSection:Button(buttontitle, callback)
				-- Instances:
				local Button = Instance.new("Frame")
				local TextLabel = Instance.new("TextLabel")
				local TextButton = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")

				--Properties:
				Button.Name = "Button"
				Button.Parent = SectionFrame
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(0, 387, 0, 25)

				TextLabel.Parent = Button
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Size = UDim2.new(0, 200, 0, 25)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = "• "..buttontitle or "Click the Button"
				TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
				TextLabel.TextSize = 14.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				TextButton.Parent = Button
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.Position = UDim2.new(0, 287, 0, 3)
				TextButton.Size = UDim2.new(0, 100, 0, 19)
				TextButton.Font = Enum.Font.SourceSansBold
				TextButton.Text = "Click Here"
				TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.TextSize = 14.000

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = TextButton
				
				-- Local Script
				local callBackDebounce = false
				TextButton.MouseEnter:Connect(function()
				    TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				    TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
				    TweenService:Create(TextButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 16)}):Play()
				end)
			    
			    TextButton.MouseLeave:Connect(function()
			        TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				    TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
				    TweenService:Create(TextButton, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 19)}):Play()
			    end)
		        
				TextButton.MouseButton1Click:Connect(function()
					if not callBackDebounce then
						callBackDebounce = true
						callback()
						wait(0.5)
						callBackDebounce = false
					end
				end)
			end

			function ItemSection:Toggle(title, default, callback)
				-- Instances:
				local togbutton = false
				local Toggle = Instance.new("Frame")
				local TextLabel = Instance.new("TextLabel")
				local ImageButton = Instance.new("ImageButton")

				--Properties:
				Toggle.Name = "Toggle"
				Toggle.Parent = SectionFrame
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderSizePixel = 0
				Toggle.Size = UDim2.new(0, 387, 0, 25)

				TextLabel.Parent = Toggle
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0, 0, 0, 0)
				TextLabel.Size = UDim2.new(0, 300, 0, 25)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = "• "..title or "Toggle Test"
				TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
				TextLabel.TextSize = 14.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Parent = Toggle
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderSizePixel = 0
				ImageButton.Position = UDim2.new(0, 367, 0, 3)
				ImageButton.Size = UDim2.new(0, 20, 0, 20)
				ImageButton.Image = "rbxassetid://3926311105"
				ImageButton.ImageRectOffset = Vector2.new(940, 784)
				ImageButton.ImageRectSize = Vector2.new(48, 48)
				
				-- Local Script
				if default == true then
					ImageButton.ImageRectOffset = Vector2.new(4, 836)
					togbutton = not togbutton
					pcall(callback, togbutton)
				end
				
				ImageButton.MouseEnter:Connect(function()
				    TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				    TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
				end)
			    
			    ImageButton.MouseLeave:Connect(function()
			        TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				    TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
			    end)

				ImageButton.MouseButton1Click:Connect(function()
					if togbutton == false then
						ImageButton.ImageRectOffset = Vector2.new(4, 836)
					else
						ImageButton.ImageRectOffset = Vector2.new(940, 784)
					end
					togbutton = not togbutton
					pcall(callback, togbutton)
				end)
			end
			
			function ItemSection:Dropdown(title, list, callback)
                -- Instances:
				local Dropdown = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local ImageButton = Instance.new("ImageButton")
				local ListText = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")
				
				--Properties:
				Dropdown.Name = "Dropdown"
				Dropdown.Parent = SectionFrame
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.BorderSizePixel = 0
				Dropdown.ClipsDescendants = true
				Dropdown.Size = UDim2.new(0, 387, 0, 26)

				Title.Name = "Title"
				Title.Parent = Dropdown
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Size = UDim2.new(0, 330, 0, 25)
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = "• "..title or "Dropdown"
				Title.TextColor3 = Color3.fromRGB(180, 180, 180)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Parent = Dropdown
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderSizePixel = 0
				ImageButton.Position = UDim2.new(0, 367, 0, 3)
				ImageButton.Size = UDim2.new(0, 20, 0, 19)
				ImageButton.Image = "rbxassetid://8530745436"

				ListText.Name = "ListText"
				ListText.Parent = Dropdown
				ListText.Active = true
				ListText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ListText.BackgroundTransparency = 1.000
				ListText.BorderSizePixel = 0
				ListText.Position = UDim2.new(0, 0, 0, 26)
				ListText.Size = UDim2.new(0, 387, 0, 0)
				ListText.CanvasSize = UDim2.new(0, 0, 0, 0)
				ListText.ScrollBarThickness = 0

				UIListLayout.Parent = ListText
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				-- Local Script
				local dropfunc = {}
                local list = list or {}
                local DropToggled = false
				local ItemCount = 0
                local FrameSize = 0
                
                ImageButton.MouseEnter:Connect(function()
                    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
                end)
                
                ImageButton.MouseLeave:Connect(function()
                    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
                end)

				ImageButton.MouseButton1Click:Connect(function()
                    if DropToggled then
                        DropToggled = false
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 26), 'InOut', 'Linear', 0.08)
                        ListText:TweenSize(UDim2.new(0, 387, 0, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                    else
                        DropToggled = true
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 26 + FrameSize), 'InOut', 'Linear', 0.08)
                        ListText:TweenSize(UDim2.new(0, 387, 0, FrameSize), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 0}):Play()
                    end
                end)

				for i,v in next, list do
                    ItemCount = ItemCount + 1
                    if ItemCount == 1 then
                        FrameSize = 20
                    elseif ItemCount == 2 then
                        FrameSize = 40
                    elseif ItemCount == 3 then
                        FrameSize = 60
                    elseif ItemCount >= 3 then
                        FrameSize = 100
                    end

					local ItemList = Instance.new("TextButton")
					ItemList.Name = "ItemList"
					ItemList.Parent = ListText
					ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ItemList.BackgroundTransparency = 1.000
					ItemList.BorderSizePixel = 0
					ItemList.Size = UDim2.new(0, 387, 0, 20)
					ItemList.Font = Enum.Font.SourceSansBold
					ItemList.Text = v or ""
					ItemList.TextColor3 = Color3.fromRGB(180, 180, 180)
					ItemList.TextSize = 14.000
					
					-- Local Script
					ItemList.MouseEnter:Connect(function()
					    TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				        TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
					end)
				    
				    ItemList.MouseLeave:Connect(function()
				        TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				        TweenService:Create(ItemList, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
				    end)

					ItemList.MouseButton1Click:Connect(function()
                        Title.Text = "• "..title.." - "..v or ""
                        pcall(callback, v)
                        DropToggled = false
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 26), 'InOut', 'Linear', 0.08)
                        ListText:TweenSize(UDim2.new(0, 387, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 180}):Play()
                    end)
                    ListText.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
                end

				function dropfunc:Clear()
                    for _,v  in next, ListText:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                            FrameSize = 0
                            ItemCount = 0
                        end
                    end
                    Title.Text = "• "..title..""
                    DropToggled = false
                    Dropdown:TweenSize(UDim2.new(0, 387, 0, 26), 'InOut', 'Linear', 0.08)
                    ListText:TweenSize(UDim2.new(0, 387, 0), 'InOut', 'Linear', 0.08)
                    game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 180}):Play()
                end
				
				function dropfunc:Add(newadd)
                    newadd = newadd or {}
                    ItemCount = ItemCount + 1
                    if ItemCount == 1 then
                        FrameSize = 20
                    elseif ItemCount == 2 then
                        FrameSize = 40
                    elseif ItemCount == 3 then
                        FrameSize = 60
                    elseif ItemCount >= 3 then
                        FrameSize = 100
                    end

					local ItemList_2 = Instance.new("TextButton")
					ItemList_2.Name = "ItemList"
					ItemList_2.Parent = ListText
					ItemList_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ItemList_2.BackgroundTransparency = 1.000
					ItemList_2.BorderSizePixel = 0
					ItemList_2.Size = UDim2.new(0, 387, 0, 20)
					ItemList_2.Font = Enum.Font.SourceSansBold
					ItemList_2.Text = newadd or ""
					ItemList_2.TextColor3 = Color3.fromRGB(180, 180, 180)
					ItemList_2.TextSize = 14.000
					
					-- Local Script
					ItemList_2.MouseEnter:Connect(function()
					    TweenService:Create(ItemList_2, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				        TweenService:Create(ItemList_2, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
					end)
				    
				    ItemList_2.MouseLeave:Connect(function()
				        TweenService:Create(ItemList_2, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				        TweenService:Create(ItemList_2, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
				    end)

					ItemList_2.MouseButton1Click:Connect(function()
                        Title.Text = "• "..title.." - "..newadd or ""
                        pcall(callback, newadd)
                        DropToggled = false
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 26), 'InOut', 'Linear', 0.08)
                        ListText:TweenSize(UDim2.new(0, 387, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 180}):Play()
                    end)
                    ListText.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
                end
                return dropfunc
			end

			function ItemSection:Slider(title, min, max, start, callback)
			    start = (math.clamp(start, min, max))
			    if start > max then set = max end
				-- Instances:
				local Sllider = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local SliderButton = Instance.new("TextButton")
				local SliderBar = Instance.new("Frame")
				local SliderBar_2 = Instance.new("Frame")
				local Circle = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
                local UICorner_2 = Instance.new("UICorner")
                local UICorner_3 = Instance.new("UICorner")

				--Properties:
				Sllider.Name = "Sllider"
				Sllider.Parent = SectionFrame
				Sllider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Sllider.BackgroundTransparency = 1.000
				Sllider.BorderSizePixel = 0
				Sllider.Size = UDim2.new(0, 387, 0, 25)

				Title.Name = "Title"
				Title.Parent = Sllider
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Size = UDim2.new(0, 150, 0, 25)
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = "• "..title.." - "..tostring(start and math.floor((start / max) * (max - min) + min) or 0)
				Title.TextColor3 = Color3.fromRGB(180, 180, 180)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				SliderButton.Name = "SliderButton"
				SliderButton.Parent = Sllider
				SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderButton.BackgroundTransparency = 1.000
				SliderButton.Position = UDim2.new(0, 187, 0, 10)
				SliderButton.Size = UDim2.new(0, 200, 0, 5)
				SliderButton.Font = Enum.Font.SourceSansBold
				SliderButton.Text = ""
				SliderButton.TextSize = 14.000
				SliderButton.AutoButtonColor = false
				
				SliderBar.Name = "SliderBar"
				SliderBar.Parent = SliderButton
				SliderBar.BackgroundColor3 = Color3.fromRGB(30,  30, 30)
				SliderBar.Size = UDim2.new(0, 200, 0, 5)
				
                UICorner_2.CornerRadius = UDim.new(0, 1000)
                UICorner_2.Parent = SliderBar
                
                SliderBar_2.Name = "SliderBar_2"
				SliderBar_2.Parent = SliderBar
				SliderBar_2.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
				SliderBar_2.Size = UDim2.new(start/max, 0, 0, 5)
				
				UICorner.CornerRadius = UDim.new(0, 10000)
				UICorner.Parent = SliderBar_2
				
				Circle.Name = "Circle"
				Circle.Parent = SliderBar_2
				Circle.AnchorPoint = Vector2.new(0, 0.1)
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.Position = UDim2.new(1, -2, 0, -2)
				Circle.Size = UDim2.new(0, 10, 0, 10)
				
				UICorner_3.Parent = Circle
				UICorner_3.CornerRadius = UDim.new(0, 10000)

				-- Local Script
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				if Value == nil then
				    Value = start
				end
			    
				SliderButton.MouseEnter:Connect(function()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
				end)
			    
			    SliderButton.MouseLeave:Connect(function()
			        TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
			    end)

				SliderButton.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * SliderBar_2.AbsoluteSize.X) + tonumber(min)) or 0
					pcall(function()
						callback(Value)
					end)
					SliderBar_2.Size = UDim2.new(0, math.clamp(mouse.X - SliderBar_2.AbsolutePosition.X, 0, 200), 0, 5)
					Circle.Position = UDim2.new(0, math.clamp(mouse.X - SliderBar_2.AbsolutePosition.X - 2, 0, 200), 0, -2)
					moveconnection = mouse.Move:Connect(function()
						Title.Text = "• "..title.." - "..Value
						Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * SliderBar_2.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						SliderBar_2.Size = UDim2.new(0, math.clamp(mouse.X - SliderBar_2.AbsolutePosition.X, 0, 200), 0, 5)
						Circle.Position = UDim2.new(0, math.clamp(mouse.X - SliderBar_2.AbsolutePosition.X - 2, 0, 200), 0, -2)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * SliderBar_2.AbsoluteSize.X) + tonumber(min))
							pcall(function()
								callback(Value)
							end)
							SliderBar_2.Size = UDim2.new(0, math.clamp(mouse.X - SliderBar_2.AbsolutePosition.X, 0, 200), 0, 5)
							Circle.Position = UDim2.new(0, math.clamp(mouse.X - SliderBar_2.AbsolutePosition.X - 2, 0, 200), 0, -2)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
				    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * SliderBar_2.AbsoluteSize.X) + tonumber(min))
						Title.Text = "• "..title.." - "..Value
				    end
				end)
			end

			function ItemSection:Textbox(title, textbox, callback)
				-- Instances:
				local TextboxFrame = Instance.new("Frame")
				local TextLabel = Instance.new("TextLabel")
				local TextBox = Instance.new("TextBox")

				--Properties:
				TextboxFrame.Name = "TextboxFrame"
				TextboxFrame.Parent = SectionFrame
				TextboxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxFrame.BackgroundTransparency = 1.000
				TextboxFrame.BorderSizePixel = 0
				TextboxFrame.Size = UDim2.new(0, 387, 0, 25)

				TextLabel.Parent = TextboxFrame
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Size = UDim2.new(0, 200, 0, 25)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = "• "..title or ""
				TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
				TextLabel.TextSize = 14.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				TextBox.Parent = TextboxFrame
				TextBox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
				TextBox.BorderSizePixel = 1
                TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.Position = UDim2.new(0, 287, 0, 3)
				TextBox.Size = UDim2.new(0, 100, 0, 19)
				TextBox.Font = Enum.Font.SourceSans
				TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.TextSize = 14.000
				TextBox.PlaceholderText = textbox or "Type Here"
                TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.Text = ""

				-- Local Script
                TextBox.FocusLost:Connect(function()
                    if not EnterPressed then
                        callback(TextBox.Text)
                        TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				        TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
				        TweenService:Create(TextBox, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 16)}):Play()
                        wait(0.15)
                        TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				        TweenService:Create(TextLabel, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
				        TweenService:Create(TextBox, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 19)}):Play()
						return
                    end
                    TextBox.Text = textbox
                end)
			end

			function ItemSection:Keybind(title, preset, callback)
				-- Instances:
				local KeybindFrame = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local Button = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")

				--Properties:
				KeybindFrame.Name = "KeybindFrame"
				KeybindFrame.Parent = SectionFrame
				KeybindFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindFrame.BackgroundTransparency = 1.000
				KeybindFrame.BorderSizePixel = 0
				KeybindFrame.Size = UDim2.new(0, 387, 0, 25)

				Title.Name = "Title"
				Title.Parent = KeybindFrame
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Size = UDim2.new(0, 200, 0, 25)
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = "• "..title or ""
				Title.TextColor3 = Color3.fromRGB(180, 180, 180)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				Button.Name = "Button"
				Button.Parent = KeybindFrame
				Button.BackgroundColor3 = Color3.fromRGB(212, 212, 212)
				Button.BorderSizePixel = 0
				Button.Position = UDim2.new(0, 287, 0, 3)
				Button.Size = UDim2.new(0, 100, 0, 19)
				Button.Font = Enum.Font.SourceSansBold
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.Text = preset

                UICorner.Parent = Button
                UICorner.CornerRadius = UDim.new(0, 5)

				-- Local Script
				local UserInputService = game:GetService("UserInputService")
				
				Button.MouseEnter:Connect(function()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 11.000}):Play()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(120, 120, 120)}):Play()
				    TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 16)}):Play()
				end)
			    
			    Button.MouseLeave:Connect(function()
			        TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize = 14.000}):Play()
				    TweenService:Create(Title, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(180, 180, 180)}):Play()
				    TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 19)}):Play()
			    end)

                Button.MouseButton1Click:Connect(function()
					Button.Text = "..."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					if inputwait.KeyCode.Name ~= "Unknown" then
						Button.Text = inputwait.KeyCode.Name
						Key = inputwait.KeyCode.Name
					end
                end)
			
				UserInputService.InputBegan:Connect(function(current, pressed)
					if not pressed then
						if current.KeyCode.Name == Key then
							pcall(callback)
						end
					end
				end)
			end
			
			function ItemSection:Label(text)
			    local labelfunc = {}
			    local Frame = Instance.new("Frame")
                local TextLabel = Instance.new("TextLabel")
                
                -- Prop --
                Frame.Name = "Frame"
                Frame.Parent = SectionFrame
                Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame.BackgroundTransparency = 1.000
                Frame.BorderSizePixel = 0
                Frame.Size = UDim2.new(0, 387, 0, 20)
                
                TextLabel.Name = "TextLabel"
                TextLabel.Parent = Frame
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.Size = UDim2.new(0, 387, 0, 20)
                TextLabel.Font = Enum.Font.SourceSansBold
                TextLabel.Text = text
                TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left
                
                -- Local Script
                function labelfunc:Refresh(newtext)
                    TextLabel.Text = newtext
                end
                return labelfunc
			end
			return ItemSection
		end
		return Section
	end
	return Tabs
end

local Window = Blacklib:Window("UI v1.4")
Blacklib:Label("SETTINGS")
Blacklib:Textbox("Speed Hack", "Input", function (speed)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = speed
    while speed do wait()
        game:GetService("Players").LocalPlayer.Character.Movement.Disabled = true
    end
end)
Blacklib:Textbox("Jump Hack", "Input", function (jump)
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = jump
end)

local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("Unlucky.")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

Blacklib:Button("FPS Boost", function()
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
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)

Blacklib:Button("Rejoin", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Blacklib:Button("Server Hop", function()
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
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								-- delfile("NotSameServers.json")
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
						-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(.1)
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
	Teleport()
end)

Blacklib:Button("Teleport To Lower Server",function()
	local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if not _G.FailedServerID then _G.FailedServerID = {} end

	local function serversearch()
		data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
		for _, v in pairs(data_table.data) do
			pcall(function()
				if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
					maxplayers = v.playing
					goodserver = v.id
				end
			end)
		end
	end

	function getservers()
		pcall(serversearch)
		for i, v in pairs(data_table) do
			if i == "nextPageCursor" then
				if gamelink:find"&cursor=" then
					local a = gamelink:find"&cursor="
					local b = gamelink:sub(a)
					gamelink = gamelink:gsub(b, "")
				end
				gamelink = gamelink .. "&cursor=" .. v
				pcall(getservers)
			end
		end
	end

	pcall(getservers)
	wait()
	if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
	end
	table.insert(_G.FailedServerID, goodserver)
	game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
end)
spawn(function()
    while wait() do
        pcall(function()
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
                local GUI = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
                if GUI then
                    if GUI.TitleFrame.ErrorTitle.Text == "Disconnected" then
                        if #game.Players:GetPlayers() <= 1 then
                            game.Players.LocalPlayer:Kick("\nRejoining...")
                            wait()
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
                        else
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                        end
                    end
                end
            end)
        end)
    end
end)

Blacklib:Button("Credit", function()
    Blacklib:Notification("• Developer = Ѕαиz#1594\n• Community Management = Jey#4690 & 𝒢𝒾𝓇𝓁𝓎#5171\n• Staff Team = Leah.#1548")
end)

Blacklib:Button("Changelog", function ()
	Blacklib:Notification("31/12/2022\n• New UI Design\n• Fixed at last bug\n• Update Blox Fruit")
end)
