-- EnemyModuleScript.lua

local EnemyModule = {}

-- Enemy settings
local enemySpeed = 10
local enemyHealth = 100

-- Initialize enemy
function EnemyModule:init(enemyModel)
    self.enemy = enemyModel
    self.humanoid = enemyModel:WaitForChild("Humanoid")
    self.humanoid.WalkSpeed = enemySpeed
    self.humanoid.MaxHealth = enemyHealth
    self.humanoid.Health = enemyHealth

    -- Set up enemy behavior
    self:setupBehavior()
end

-- Set up enemy behavior
function EnemyModule:setupBehavior()
    -- Example of enemy chasing the player
    local player = game.Players:GetPlayers()[1]
    if player then
        local playerCharacter = player.Character or player.CharacterAdded:Wait()
        local playerHumanoid = playerCharacter:WaitForChild("Humanoid")

        -- Simple chase behavior
        while true do
            if playerHumanoid.Health > 0 then
                self.humanoid:MoveTo(playerCharacter.HumanoidRootPart.Position)
            end
            wait(1)
        end
    end
end

return EnemyModule