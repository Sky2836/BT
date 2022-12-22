-- BLACKTRAP UI
-- Stable Version

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
	WindowFrame.Position = UDim2.new(0.245614037, 0, 0.140641019, 0)
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
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0.941538393, 0, 0.100000232, 0)
	CloseButton.Size = UDim2.new(0, 25, 0, 25)
	CloseButton.Image = "http://www.roblox.com/asset/?id=8546705275"

	Minimize.Name = "Minimize"
	Minimize.Parent = TopFrame
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minimize.BorderSizePixel = 0
	Minimize.Position = UDim2.new(0.89538455, 0, 0.100000009, 0)
	Minimize.Size = UDim2.new(0, 25, 0, 25)
	Minimize.Image = "http://www.roblox.com/asset/?id=8546702233"

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

	-- Modules
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
	Minimize.MouseButton1Click:Connect(function()
		if mintog == true then
			game.TweenService:Create(WindowFrame, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 550, 0, 350)}):Play()
			wait(0.5)
			game.TweenService:Create(TabWindow, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = true}):Play()
			game.TweenService:Create(ContainerItem.Container, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = true}):Play()
		else
			game.TweenService:Create(WindowFrame, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 550, 0, 30)}):Play()
			game.TweenService:Create(TabWindow, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = false}):Play()
			game.TweenService:Create(ContainerItem.Container, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Visible = false}):Play()
		end
		mintog = not mintog
	end)

	CloseButton.MouseButton1Click:Connect(function()
		game:GetService("CoreGui"):FindFirstChild("BlackTrap"):Destroy()
	end)

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
		NotificationDesc.Font = Enum.Font.Ubuntu
		NotificationDesc.Text = textdesc
		NotificationDesc.TextColor3 = Color3.fromRGB(208, 208, 208)
		NotificationDesc.TextSize = 12.000
		NotificationDesc.TextXAlignment = Enum.TextXAlignment.Left
		NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

		-- Notification Script
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
		TabFrame.Position = UDim2.new(0.0497092679, 0, 0.115970865, 0)
		TabFrame.Size = UDim2.new(0, 137, 0, 30)
		TabFrame.Font = Enum.Font.SourceSans
		TabFrame.Text = ""
		TabFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabFrame.TextSize = 14.000

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
		Container.Active = true
		Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container.BackgroundTransparency = 1.000
		Container.BorderSizePixel = 0
		Container.Position = UDim2.new(-0.00507614203, 0, 0.00961538497, 0)
		Container.Size = UDim2.new(0, 396, 0, 0)
		Container.ScrollBarThickness = 3
		Container.Visible = true

		ContainerLayout.Name = "ContainerLayout"
		ContainerLayout.Parent = Container
		ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ContainerLayout.Padding = UDim.new(0, 10)

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
				v:TweenSize(UDim2.new(0, 396, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, .3, true)
				UpdateSize()
			end
			wait(0.1)
			Container:TweenSize(UDim2.new(0, 396, 0, 309), Enum.EasingDirection.In, Enum.EasingStyle.Linear, .3, true)
			UpdateSize()
		end)

		local Section = {}
		function Section:NewSection()
			-- Instances:
			local SectionFrame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local SectionFrameHead = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")

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
			TextLabel.Size = UDim2.new(0, 387, 0, 20)
			TextLabel.Font = Enum.Font.SourceSansBold
			TextLabel.Text = "Menu"
			TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextLabel.TextSize = 16.000
			SectionFrame.Size = UDim2.new(0, 387, 0, 7 + UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)

			UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				SectionFrame.Size = UDim2.new(0, 387, 0, 7 + UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)
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
				Button.Size = UDim2.new(0, 387, 0, 20)

				TextLabel.Parent = Button
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Size = UDim2.new(0, 200, 0, 20)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = "• "..buttontitle or "Click the Button"
				TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
				TextLabel.TextSize = 14.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				TextButton.Parent = Button
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.Position = UDim2.new(0, 263, 0, 0)
				TextButton.Size = UDim2.new(0, 100, 0, 20)
				TextButton.Font = Enum.Font.SourceSansBold
				TextButton.Text = "Click Here"
				TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.TextSize = 14.000

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = TextButton

				local callBackDebounce = false
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
				Toggle.Size = UDim2.new(0, 387, 0, 20)

				TextLabel.Parent = Toggle
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0, 0, 0, 0)
				TextLabel.Size = UDim2.new(0, 300, 0, 20)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = "• "..title or "Toggle Test"
				TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
				TextLabel.TextSize = 14.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Parent = Toggle
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderSizePixel = 0
				ImageButton.Position = UDim2.new(0, 343, 0, 0)
				ImageButton.Size = UDim2.new(0, 23, 0, 23)
				ImageButton.Image = "rbxassetid://3926311105"
				ImageButton.ImageRectOffset = Vector2.new(940, 784)
				ImageButton.ImageRectSize = Vector2.new(48, 48)

				if default == true then
					ImageButton.ImageRectOffset = Vector2.new(4, 836)
					togbutton = not togbutton
					pcall(callback, togbutton)
				end

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
				Dropdown.Size = UDim2.new(0, 387, 0, 30)

				Title.Name = "Title"
				Title.Parent = Dropdown
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Size = UDim2.new(0, 330, 0, 20)
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = "• "..title or "Dropdown"
				Title.TextColor3 = Color3.fromRGB(180, 180, 180)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Parent = Dropdown
				ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderSizePixel = 0
				ImageButton.Position = UDim2.new(0, 343, 0, 5)
				ImageButton.Size = UDim2.new(0, 20, 0, 20)
				ImageButton.Image = "rbxassetid://8530745436"

				ListText.Name = "ListText"
				ListText.Parent = Dropdown
				ListText.Active = true
				ListText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ListText.BackgroundTransparency = 1.000
				ListText.BorderSizePixel = 0
				ListText.Position = UDim2.new(0, 0, 0, 21)
				ListText.Size = UDim2.new(0, 387, 0, 0)
				ListText.CanvasSize = UDim2.new(0, 0, 0, 0)
				ListText.ScrollBarThickness = 0

				UIListLayout.Parent = ListText
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				--Module
				local dropfunc = {}
                local list = list or {}
                local DropToggled = false
				local ItemCount = 0
                local FrameSize = 0

				ImageButton.MouseButton1Click:Connect(function()
                    if DropToggled then
                        DropToggled = false
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 30), 'InOut', 'Linear', 0.08)
                        ListText:TweenSize(UDim2.new(0, 387, 0, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 180}):Play()
                    else
                        DropToggled = true
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 30 + FrameSize), 'InOut', 'Linear', 0.08)
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

					ItemList.MouseButton1Click:Connect(function()
                        Title.Text = "• "..title.." - "..v or ""
                        pcall(callback, v)
                        DropToggled = false
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 30), 'InOut', 'Linear', 0.08)
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
                    Dropdown:TweenSize(UDim2.new(0, 387, 0, 30), 'InOut', 'Linear', 0.08)
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

					ItemList_2.MouseButton1Click:Connect(function()
                        Title.Text = "• "..title.." - "..newadd or ""
                        pcall(callback, newadd)
                        DropToggled = false
                        Dropdown:TweenSize(UDim2.new(0, 387, 0, 30), 'InOut', 'Linear', 0.08)
                        ListText:TweenSize(UDim2.new(0, 387, 0), 'InOut', 'Linear', 0.08)
                        game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 180}):Play()
                    end)
                    ListText.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
                end
                return dropfunc
			end

			function ItemSection:Slider(title, min, max, callback)
				-- Instances:
				local Sllider = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local SliderFrame = Instance.new("Frame")
				local ImageButton = Instance.new("ImageButton")
				local ImageLabel = Instance.new("ImageLabel")
				local UICorner = Instance.new("UICorner")
                local ImageCorner = Instance.new("UICorner")

				--Properties:
				Sllider.Name = "Sllider"
				Sllider.Parent = SectionFrame
				Sllider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Sllider.BackgroundTransparency = 1.000
				Sllider.BorderSizePixel = 0
				Sllider.Size = UDim2.new(0, 387, 0, 30)

				Title.Name = "Title"
				Title.Parent = Sllider
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Size = UDim2.new(0, 150, 0, 30)
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = "• "..title.." - "..min or title.."0"
				Title.TextColor3 = Color3.fromRGB(180, 180, 180)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Sllider
				SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderFrame.BackgroundTransparency = 1.000
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(0, 170, 0, 0)
				SliderFrame.Size = UDim2.new(0, 220, 0, 30)

				ImageButton.Parent = SliderFrame
				ImageButton.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderSizePixel = 0
				ImageButton.Position = UDim2.new(0, 10, 0, 8)
				ImageButton.Size = UDim2.new(0, 200, 0, 8)
				ImageButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                ImageButton.ImageTransparency = 0.8

                ImageCorner.CornerRadius = UDim.new(0, 1000)
                ImageCorner.Parent = ImageButton

				ImageLabel.Parent = ImageButton
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Position = UDim2.new(0, 0, 0, 0)
				ImageLabel.Size = UDim2.new(0, 8, 0, 8)
				ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

				UICorner.CornerRadius = UDim.new(0, 10000)
				UICorner.Parent = ImageLabel

				-- Modules
				min = min or 0
				max = max
				callback = callback or function() end

				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				local Value;

				ImageButton.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * ImageLabel.AbsoluteSize.X) + tonumber(min)) or 0
					pcall(function()
						callback(Value)
					end)
					ImageLabel.Size = UDim2.new(0, math.clamp(mouse.X - ImageLabel.AbsolutePosition.X, 0, 200), 0, 8)
					moveconnection = mouse.Move:Connect(function()
						Title.Text = "• "..title.." - "..Value
						Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * ImageLabel.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						ImageLabel.Size = UDim2.new(0, math.clamp(mouse.X - ImageLabel.AbsolutePosition.X, 0, 200), 0, 8)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(max) - tonumber(min)) / 200) * ImageLabel.AbsoluteSize.X) + tonumber(min))
							pcall(function()
								callback(Value)
							end)
							ImageLabel.Size = UDim2.new(0, math.clamp(mouse.X - ImageLabel.AbsolutePosition.X, 0, 200), 0, 8)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
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
				TextboxFrame.Size = UDim2.new(0, 387, 0, 20)

				TextLabel.Parent = TextboxFrame
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Size = UDim2.new(0, 200, 0, 20)
				TextLabel.Font = Enum.Font.SourceSansBold
				TextLabel.Text = "• "..title or ""
				TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
				TextLabel.TextSize = 14.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				TextBox.Parent = TextboxFrame
				TextBox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
				TextBox.BorderSizePixel = 1
                TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.Position = UDim2.new(0, 263, 0, 0)
				TextBox.Size = UDim2.new(0, 100, 0, 20)
				TextBox.Font = Enum.Font.SourceSans
				TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.TextSize = 14.000
				TextBox.PlaceholderText = textbox or "Type Here"
                TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.Text = ""

				-- Modul
                TextBox.FocusLost:Connect(function()
                    if not EnterPressed then
                        callback(TextBox.Text)
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
				KeybindFrame.Size = UDim2.new(0, 387, 0, 20)

				Title.Name = "Title"
				Title.Parent = KeybindFrame
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.BorderSizePixel = 0
				Title.Size = UDim2.new(0, 200, 0, 20)
				Title.Font = Enum.Font.SourceSansBold
				Title.Text = "• "..title or ""
				Title.TextColor3 = Color3.fromRGB(180, 180, 180)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				Button.Name = "Button"
				Button.Parent = KeybindFrame
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BorderSizePixel = 0
				Button.Position = UDim2.new(0, 263, 0, 0)
				Button.Size = UDim2.new(0, 100, 0, 20)
				Button.Font = Enum.Font.SourceSansBold
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.Text = preset.Name or ""

                UICorner.Parent = Button
                UICorner.CornerRadius = UDim.new(0, 5)

				-- Modul
				preset.Name = Key
				local UserInputService = game:GetService("UserInputService")
                Button.MouseButton1Click:Connect(function()
					Button.Text = ". . ."
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
			return ItemSection
		end
		return Section
	end
	return Tabs
end
return Blacklib
