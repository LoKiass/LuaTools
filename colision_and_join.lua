local BasePlate = game.Workspace.Baseplate
local is_touched_status = false


BasePlate.BrickColor = BrickColor.new("Red flip/flop")
-- Collisions avec n'importe quelle object du monde
game.Workspace.Model.Part1.Touched:Connect(function(otherpart)
	if is_touched_status == false then
		is_touched_status = true
		print(otherpart.Name)
		print("is_touched_triggered")

		task.wait(2) -- Cooldown afin d'eviter un trop de msg / Debounce
		is_touched_status = false
	end

end)
-- Event quand un joueur rejoint la partit
game.Players.PlayerAdded:Connect(function(player)
	print(player.Name .. " has joined the game!")
end)

