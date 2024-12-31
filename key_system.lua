local key = script.Parent
local keycode = game.Workspace:WaitForChild("key")

keycode.Touched:Connect(function(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then -- Verification de si c'est object humanoid qui touche l'object part
		local player = game.Players:GetPlayerFromCharacter(character)
		if player then -- Verification de quelle joueur qui touche la plaque
			local leaderstats = player:FindFirstChild("leaderstats")
			if leaderstats then -- Verification de si sont leaderstat est utilisable
				local cleStat = leaderstats:FindFirstChild("cle") -- Chercher l'enfant cle que nous avons initialisé dans le code stat.lua
				if cleStat then
					cleStat.Value = 1
					game.Debris:AddItem(key, 0)
					task.wait(1)
				end
			end
		end
	end
end)