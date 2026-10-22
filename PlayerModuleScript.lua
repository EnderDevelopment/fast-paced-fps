-- PlayerModuleScript.lua

local PlayerModule = {}

-- Player movement settings
local moveSpeed = 16
local jumpPower = 50

-- Initialize player
function PlayerModule:init(player)
    self.player = player
    self.character = player.Character or player.CharacterAdded:Wait()
    self.humanoid = self.character:WaitForChild("Humanoid")

    -- Set up movement controls
    self:setupMovement()
end

-- Set up player movement
function PlayerModule:setupMovement()
    self.humanoid.WalkSpeed = moveSpeed
    self.humanoid.JumpPower = jumpPower

    -- Example of adding a custom action (e.g., shooting)
    local userInputService = game:GetService("UserInputService")
    userInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.UserInputType == Enum.UserInputType.MouseButton1 then
            self:shoot()
        end
    end)
end

-- Example shoot function
function PlayerModule:shoot()
    print("Player shot!")
    -- Add shooting logic here
end

return PlayerModule