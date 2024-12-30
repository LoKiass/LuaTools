local model = script.Parent -- Localasition du model grâce au parent 
local part1 = model:FindFirstChild("Part1") -- Trouver l'enfant dans le model, il vas donc check le model pour Part1  (InBuild fonction)
local part2 = model:WaitForChild("Part2") -- Quand il vas apparaître sur dans le model, même quand le jeu est lancé, il vas attendre le model
if part1 then
	part1.BrickColor = BrickColor.new("Red flip/flop") -- Si part1 existe, alors change de couleur 
end
if part2 then
	part2.BrickColor = BrickColor.new("Black")
end