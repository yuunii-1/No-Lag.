local function createLoadingScreen()
    local loadingScreen = Instance.new("ScreenGui")
    loadingScreen.Name = "LoadingScreen"
    loadingScreen.Parent = game.Players.LocalPlayer.PlayerGui

    local loadingFrame = Instance.new("Frame")
    loadingFrame.Parent = loadingScreen
    loadingFrame.Size = UDim2.new(0.2, 0, 0.15, 0)
    loadingFrame.Position = UDim2.new(0.4, 0, 0.45, 0)
    loadingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    loadingFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    loadingFrame.BorderSizePixel = 2

    local loadingLabel = Instance.new("TextLabel")
    loadingLabel.Parent = loadingFrame
    loadingLabel.Text = "Bypassing Anti-Cheat..."
    loadingLabel.Size = UDim2.new(1, 0, 0.4, 0)
    loadingLabel.TextColor3 = Color3.new(1, 1, 1)
    loadingLabel.TextScaled = true
    loadingLabel.BackgroundTransparency = 1
    loadingLabel.TextWrapped = true
    loadingLabel.Font = Enum.Font.SourceSansBold
    loadingLabel.TextStrokeTransparency = 0
    loadingLabel.TextStrokeColor3 = Color3.new(0,0,0)

    local progressBar = Instance.new("ProgressBar")
    progressBar.Parent = loadingFrame
    progressBar.Size = UDim2.new(1, 0, 0.6, 0)
    progressBar.Position = UDim2.new(0, 0, 0.4, 0)
    progressBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    progressBar.BorderSizePixel = 0
    progressBar.ProgressColor3 = Color3.fromRGB(0, 255, 0)

    return loadingScreen, progressBar
end

local function createTradeFreezeUI()
    local PlayerGui = game.Players.LocalPlayer.PlayerGui

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "GrowAGardenUI"
    mainFrame.Parent = PlayerGui
    mainFrame.Size = UDim2.new(0.3, 0, 0.6, 0)
    mainFrame.Position = UDim2.new(0.35, 0, 0.2, 0)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    mainFrame.BorderSizePixel = 2

    local tradeFreezerFrame = Instance.new("Frame")
    tradeFreezerFrame.Parent = mainFrame
    tradeFreezerFrame.Size = UDim2.new(1, 0, 0.3, 0)
    tradeFreezerFrame.Position = UDim2.new(0, 0, 0, 0)
    tradeFreezerFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 200)

    local tradeFreezerLabel = Instance.new("TextLabel")
    tradeFreezerLabel.Parent = tradeFreezerFrame
    tradeFreezerLabel.Text = "Trade Freezer"
    tradeFreezerLabel.Size = UDim2.new(1, 0, 0.2, 0)
    tradeFreezerLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    tradeFreezerLabel.TextColor3 = Color3.new(1, 1, 1)
    tradeFreezerLabel.FontSize = Enum.FontSize.Size18
    tradeFreezerLabel.TextScaled = true
    tradeFreezerLabel.TextWrapped = true

    local userTextBox = Instance.new("TextBox")
    userTextBox.Parent = tradeFreezerFrame
    userTextBox.PlaceholderText = "User ="
    userTextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
    userTextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
    userTextBox.BackgroundColor3 = Color3.new(1, 1, 1)

    local freezeTradeButton = Instance.new("TextButton")
    freezeTradeButton.Parent = tradeFreezerFrame
    freezeTradeButton.Text = "Freeze Trade"
    freezeTradeButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    freezeTradeButton.Position = UDim2.new(0.1, 0, 0.6, 0)
    freezeTradeButton.BackgroundColor3 = Color3.new(0, 1, 0)
    freezeTradeButton.TextColor3 = Color3.new(0, 0, 0)

    local autoAcceptButton = Instance.new("TextButton")
    autoAcceptButton.Parent = tradeFreezerFrame
    autoAcceptButton.Text = "Auto Accept"
    autoAcceptButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    autoAcceptButton.Position = UDim2.new(0.1, 0, 0.9, 0)
    autoAcceptButton.BackgroundColor3 = Color3.new(0, 1, 0)
    autoAcceptButton.TextColor3 = Color3.new(0, 0, 0)
end

local loadingScreen, progressBar = createLoadingScreen()

local function simulateLoading(progressBar)
    for i = 0, 1, 0.01 do
        progressBar.Progress = i
        wait(0.05)
    end
    loadingScreen:Destroy()
    createTradeFreezeUI()
end

simulateLoading(progressBar)

