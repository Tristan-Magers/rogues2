clear @s barrier

clear @s[scores={Mana=..5}] purple_dye
clear @s[scores={Mana=..6}] sugar
clear @s[scores={Mana=..5}] bone

execute as @s[scores={Mana=..4}] run replaceitem entity @s hotbar.1 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run replaceitem entity @s hotbar.2 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..4}] run replaceitem entity @s hotbar.3 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..2}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=5..}] run replaceitem entity @s hotbar.1 purple_dye{display:{Name:"[{\"text\":\"Thorns\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=6..}] run replaceitem entity @s hotbar.2 sugar{display:{Name:"[{\"text\":\"Shield\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2.2s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=5..}] run replaceitem entity @s hotbar.3 bone{display:{Name:"[{\"text\":\"Totem\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Strength\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\"/\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\"Jump\",\"color\":\"white\",\"italic\":\"false\",\"bold\":\"false\"},{\"text\":\"/\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\"Resistance\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
