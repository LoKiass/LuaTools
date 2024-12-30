local killBrick = script.Parent
killBrick.BrickColor = BrickColor.new("Dark red")

killBrick.Touched:Connect(function(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.Health = 0
	end
end)
test
