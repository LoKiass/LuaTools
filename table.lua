local Table = {"Tableau", 5, 6.1}

table.insert(Table, 10) -- Ajouter une valeur au tableau (a la fin)
table.remove(Table, 1) -- Enlever la première valeur du tableau
for index = 1, #Table , 1 do -- # Permet de savoir le nombre de donné dans le tableau
	print(Table[index])
end 

if table.find(Table, 6.1) then -- Trouver une valeur dans un tableau 
	print("Valeur 6.1 trouvé")
end

-- Dictionnaire , fonctionne avec des clée et des valeur
local Dict = {
	["Nom"] = "John",
	["Age"] = 30,
	["Pays"] = "France"
}

print(Dict.Nom) -- Print la valeur dans la clée nom 
Dict.Nom = "LoKias_" -- Changer la valeur dans un tableau
for key, value in pairs(Dict) do -- Parcourir un dictionnaire
	print(key, value)
end

