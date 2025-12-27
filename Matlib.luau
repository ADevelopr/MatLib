local MatLib = {}

function randomizename(length)
	local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()`-=[]\;'" .. ',./~_+{}|:"<>?'
	local name = {}
	for i = 1, length do
		local random = math.random(1, #chars)
		table.insert(name, string.sub(chars, random, random))
	end
	return table.concat(name)
end

function MatLib:CreateWindow(Name, Theme)
	local screengui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
	screengui.Name = randomizename(math.random(12, 24))
	screengui.IgnoreGuiInset = true
	screengui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	screengui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	
	local main = Instance.new("Frame", screengui)
	main.Name = "Main"
	main.BorderSizePixel = 0
	main.BackgroundColor3 = Color3.fromRGB(47, 62, 72)
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.Size = UDim2.new(0, 525, 0, 350)
	main.Position = UDim2.new(0.5, 0, 0.5, 0)
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	
	local uicorner = Instance.new("UICorner", main)
	uicorner.CornerRadius = UDim.new(0, 4)
	
	local shadowholder = Instance.new("Frame", main)
	shadowholder.ZIndex = 0
	shadowholder.Size = UDim2.new(1.005, 0, 1.005, 0)
	shadowholder.Name = "shadowHolder"
	shadowholder.BackgroundTransparency = 1
	
	local umbraShadow = Instance.new("ImageLabel", shadowholder)
	umbraShadow.ZIndex = 0
	umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	umbraShadow.ScaleType = Enum.ScaleType.Slice
	umbraShadow.ImageTransparency = 0.86
	umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow.Image = 'rbxassetid://1316045217'
	umbraShadow.Size = UDim2.new(1, 10, 1, 10)
	umbraShadow.BackgroundTransparency = 1
	umbraShadow.Name = "umbraShadow"
	umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	
	local penumbraShadow = Instance.new("ImageLabel", shadowholder)
	penumbraShadow.ZIndex = 0
	penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	penumbraShadow.ScaleType = Enum.ScaleType.Slice
	penumbraShadow.ImageTransparency = 0.88
	penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow.Image = 'rbxassetid://1316045217'
	penumbraShadow.Size = UDim2.new(1, 10, 1, 10)
	penumbraShadow.BackgroundTransparency = 1
	penumbraShadow.Name = "penumbraShadow"
	penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	
	local ambientShadow = Instance.new("ImageLabel", shadowholder)
	ambientShadow.ZIndex = 0
	ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	ambientShadow.ScaleType = Enum.ScaleType.Slice
	ambientShadow.ImageTransparency = 0.88
	ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow.Image = 'rbxassetid://1316045217'
	ambientShadow.Size = UDim2.new(1, 10, 1, 10)
	ambientShadow.BackgroundTransparency = 1
	ambientShadow.Name = "ambientShadow"
	ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	
	local Topbar = Instance.new("Frame", main)
	Topbar.BorderSizePixel = 0
	Topbar.BackgroundColor3 = Color3.fromRGB(62, 83, 96)
	Topbar.AnchorPoint = Vector2.new(1, 0)
	Topbar.Size = UDim2.new(1, 0, 0, 30)
	Topbar.Position = UDim2.new(1, 0, 0, 0)
	Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Topbar.Name = "Topbar"
	Instance.new('UICorner', Topbar).CornerRadius = UDim.new(0, 4)
	
	local UiName = Instance.new("TextLabel", Topbar)
	UiName.BorderSizePixel = 0
	UiName.TextSize = 20
	UiName.TextXAlignment = Enum.TextXAlignment.Left
	UiName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UiName.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	UiName.TextColor3 = Color3.fromRGB(0, 0, 0)
	UiName.BackgroundTransparency = 1
	UiName.Size = UDim2.new(0.5, 0, 1, 0)
	UiName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UiName.Text = "Example Lib"
	UiName.Name = "Name"
	
	local Close = Instance.new("ImageButton", Topbar)
	Close.BorderSizePixel = 0
	Close.BackgroundTransparency = 1
	Close.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Close.AnchorPoint = Vector2.new(1, 0)
	Close.Image = 'rbxassetid://10734895530'
	Close.Size = UDim2.new(0, 25, 0, 25)
	Close.BorderColor3 = Color3.fromRGB(0,0,0)
	Close.Name = 'Close'
	Close.Position = UDim2.new(1, 0, 0.06667, 0)
	local cando = Instance.new("LocalScript", Close)
	
	local showUi = Instance.new("TextButton", screengui)
	showUi.TextWrapped = true
	showUi.BorderSizePixel = 0
	showUi.TextSize = 14
	showUi.TextScaled = true
	showUi.TextColor3 = Color3.fromRGB(0, 0, 0)
	showUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	showUi.FontFace = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	showUi.Size = UDim2.new(0, 100, 0, 25)
	showUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
	showUi.Text = "Show Ui"
	showUi.Name = "Show Ui"
	showUi.Position = UDim2.new(0.45172, 0, 0.12371, 0)
	Instance.new("UICorner", showUi).CornerRadius = UDim.new(1, 0)
	
	local function C_d()
	local script = cando
		local closebutton = script.Parent
		local frame = closebutton.Parent.Parent
		local openbutton = frame.Parent["Show Ui"]

		closebutton.MouseButton1Click:Connect(function()
			frame.Visible = false
			openbutton.Visible = true
		end)

		openbutton.MouseButton1Click:Connect(function()
			frame.Visible = true
			openbutton.Visible = false
		end)
	end
	task.spawn(C_d)
end

return MatLib
