local correctKey = "YoxanXHub_PdRw9TqLvX7KdYsWpT7"
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- GUI Setup
local keyGui = Instance.new("ScreenGui", CoreGui)
keyGui.Name = "YoxanXHub Key System"
keyGui.ResetOnSpawn = false

-- Rainbow Stroke Function
local function rainbowStroke(obj)
	local stroke = Instance.new("UIStroke", obj)
	stroke.Thickness = 2
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	coroutine.wrap(function()
		while obj.Parent do
			local h = tick() % 5 / 5
			stroke.Color = Color3.fromHSV(h, 1, 1)
			wait(0.05)
		end
	end)()
end

-- Frame
local frame = Instance.new("Frame", keyGui)
frame.Size = UDim2.new(0, 280, 0, 160)
frame.Position = UDim2.new(0.5, -140, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
rainbowStroke(frame)

-- Title
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Text = "🔐 Enter Access Key"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Close Button
local close = Instance.new("TextButton", frame)
close.Size = UDim2.new(0, 25, 0, 25)
close.Position = UDim2.new(1, -30, 0, 5)
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 75, 75)
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.BackgroundTransparency = 1
close.MouseButton1Click:Connect(function()
    keyGui:Destroy()
end)

-- Input
local input = Instance.new("TextBox", frame)
input.PlaceholderText = "Enter Key..."
input.Size = UDim2.new(0.8, 0, 0.2, 0)
input.Position = UDim2.new(0.1, 0, 0.4, 0)
input.TextColor3 = Color3.new(1, 1, 1)
input.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
input.BorderSizePixel = 0
input.Font = Enum.Font.Gotham
input.TextSize = 16

-- Submit Button
local submit = Instance.new("TextButton", frame)
submit.Size = UDim2.new(0.45, 0, 0.2, 0)
submit.Position = UDim2.new(0.05, 0, 0.7, 0)
submit.Text = "Submit"
submit.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
submit.TextColor3 = Color3.new(1,1,1)
submit.Font = Enum.Font.GothamBold
submit.TextSize = 16

-- Get Key Button
local getKey = Instance.new("TextButton", frame)
getKey.Size = UDim2.new(0.45, 0, 0.2, 0)
getKey.Position = UDim2.new(0.5, 0, 0.7, 0)
getKey.Text = "Get Key"
getKey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
getKey.TextColor3 = Color3.fromRGB(255, 255, 255)
getKey.Font = Enum.Font.GothamBold
getKey.TextSize = 16

-- Error Text
local errorLabel = Instance.new("TextLabel", frame)
errorLabel.Size = UDim2.new(1, 0, 0.2, 0)
errorLabel.Position = UDim2.new(0, 0, 0.62, 0)
errorLabel.BackgroundTransparency = 1
errorLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
errorLabel.Font = Enum.Font.Gotham
errorLabel.TextSize = 14
errorLabel.Text = ""
errorLabel.Visible = false

getKey.MouseButton1Click:Connect(function()
    setclipboard("")
    getKey.Text = "Copied!"
    task.wait(2)
    getKey.Text = "Get Key"
end)

local function showNotification(text, duration)
    errorLabel.Text = text
    errorLabel.Visible = true
    task.delay(duration or 2, function()
        errorLabel.Visible = false
    end)
end

_G.scriptURL =loadstring(game:HttpGet("https://raw.githubusercontent.com/ditzzdsgstd-dotcom/Fisch/main/fisch.lua"))()

