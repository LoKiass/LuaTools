local part = game.Workspace:WaitForChild("Part")
part.Touched:Connect(function(otherPart)
	print("Test")
	part.BrickColor = BrickColor.new("Really red")
end)
