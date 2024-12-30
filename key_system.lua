local key = script.Parent
local keycode = game.Workspace:WaitForChild("key")

keycode.Touched:Connect(function(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		local player = game.Players:GetPlayerFromCharacter(character)
		if player then
			local leaderstats = player:FindFirstChild("leaderstats")
			if leaderstats then
				local cleStat = leaderstats:FindFirstChild("cle")
				if cleStat then
					cleStat.Value = 1
					game.Debris:AddItem(key, 0)
					task.wait(1)
				end
			end
		end
	end
end)