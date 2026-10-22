-- UIModuleScript.lua

local UIModule = {}

-- Initialize UI
function UIModule:init(player)
    self.player = player
    self.playerGui = player:WaitForChild("PlayerGui")

    -- Create a simple UI element
    self:createUI()
end

-- Create UI elements
function UIModule:createUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "GameUI"
    screenGui.Parent = self.playerGui

    -- Example of creating a label
    local label = Instance.new("TextLabel")
    label.Name = "GameLabel"
    label.Size = UDim2.new(0, 200, 0, 50)
    label.Position = UDim2.new(0.5, -100, 0, 10)
    label.Text = "Fast-Paced Action Game"
    label.TextColor3 = Color3.new(1, 1, 1)
    label.BackgroundTransparency = 1
    label.Parent = screenGui

    -- Add more UI elements as needed
end

return UIModule