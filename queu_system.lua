local TeleportService = game:GetService("TeleportService") 

local queuePart = game.Workspace.Queue.q2:WaitForChild("Enter")
local enterPart = game.Workspace.Queue.q2:WaitForChild("Trigger")

local placeId = 103441556239631 

local playersOnPlate = {} 
local maxPlayersNeeded = 2 

local function teleportPlayer(player, destinationPlayer)
	local character = player.Character
	if character then
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			humanoidRootPart.CFrame = destinationPlayer.CFrame
		end
	end
end

enterPart.Touched:Connect(function(otherPart)
	local humanoid = otherPart.Parent
	if humanoid and humanoid:FindFirstChild("Humanoid") then
		local player = game.Players:GetPlayerFromCharacter(humanoid)
		if player then
			teleportPlayer(player, queuePart)
		end
	end
end)
queuePart.Touched:Connect(function(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	if humanoid then
		local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
		if player and not table.find(playersOnPlate, player) then
			table.insert(playersOnPlate, player) -- Ajoute le joueur à la liste
		end
	end
	-- GUI 
	if #playersOnPlate == maxPlayersNeeded then
		TeleportService:TeleportAsync(placeId, playersOnPlate)
		playersOnPlate = {} 
	end
end)

queuePart.TouchEnded:Connect(function(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	if humanoid then
		local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
		if player then
			for i, p in ipairs(playersOnPlate) do
				if p == player then
					table.remove(playersOnPlate, i)
					break
				end
			end
		end
	end
end)

