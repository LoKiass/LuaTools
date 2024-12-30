local is_touched_status 


game.Players.PlayerAdded:Connect(function(player) -- stat du joueur :
	local leaderstat = Instance.new("Folder")
	leaderstat.Name = "leaderstats"
	leaderstat.Parent = player
	
	local coins = Instance.new("IntValue")
	coins.Name = "coins"
	coins.Parent = leaderstat
	
	local victory = Instance.new("IntValue")
	victory.Name = "Victoire"
	victory.Parent = leaderstat
end)
