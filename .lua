local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player.PlayerGui

-- Create the main frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "GrowAGardenUI"
mainFrame.Parent = PlayerGui
mainFrame.Size = UDim2.new(0.3, 0, 0.6, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.2, 0) -- Adjust position as needed
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 2


-- Create the Trade Freezer section
local tradeFreezerFrame = Instance.new("Frame")
tradeFreezerFrame.Parent = mainFrame
tradeFreezerFrame.Size = UDim2.new(1, 0, 0.3, 0)
tradeFreezerFrame.Position = UDim2.new(0,0,0,0)
tradeFreezerFrame.BackgroundColor3 = Color3.fromRGB(40,40,200)

local tradeFreezerLabel = Instance.new("TextLabel")
tradeFreezerLabel.Parent = tradeFreezerFrame
tradeFreezerLabel.Text = "Trade Freezer"
tradeFreezerLabel.Size = UDim2.new(1,0,0.2,0)
tradeFreezerLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
tradeFreezerLabel.TextColor3 = Color3.new(1,1,1)
tradeFreezerLabel.FontSize = Enum.FontSize.Size18
tradeFreezerLabel.TextScaled = true
tradeFreezerLabel.TextWrapped = true

local userTextBox = Instance.new("TextBox")
userTextBox.Parent = tradeFreezerFrame
userTextBox.PlaceholderText = "User ="
userTextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
userTextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
userTextBox.BackgroundColor3 = Color3.new(1,1,1)

local freezeTradeButton = Instance.new("TextButton")
freezeTradeButton.Parent = tradeFreezerFrame
freezeTradeButton.Text = "Freeze Trade"
freezeTradeButton.Size = UDim2.new(0.8, 0, 0.2, 0)
freezeTradeButton.Position = UDim2.new(0.1, 0, 0.6, 0)
freezeTradeButton.BackgroundColor3 = Color3.new(0,1,0)
freezeTradeButton.TextColor3 = Color3.new(0,0,0)

local autoAcceptButton = Instance.new("TextButton")
autoAcceptButton.Parent = tradeFreezerFrame
autoAcceptButton.Text = "Auto Accept"
autoAcceptButton.Size = UDim2.new(0.8, 0, 0.2, 0)
autoAcceptButton.Position = UDim2.new(0.1, 0, 0.9, 0)
autoAcceptButton.BackgroundColor3 = Color3.new(0,1,0)
autoAcceptButton.TextColor3 = Color3.new(0,0,0)
