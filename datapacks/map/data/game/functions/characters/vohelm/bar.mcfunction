clear @s barrier

clear @s[scores={Mana=..6}] purple_dye
clear @s[scores={Mana=..6}] sugar
clear @s[scores={Mana=..6}] bone

execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.3 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=6..,shieldT=1..}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.1 with purple_dye{display:{Name:"[{\"text\":\"Thorns\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=6..,shieldT=..0}] run item replace entity @s hotbar.2 with sugar{display:{Name:"[{\"text\":\"Shield\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2.2s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.3 with bone{display:{Name:"[{\"text\":\"Totem\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Strength\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\"/\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\"Jump\",\"color\":\"white\",\"italic\":\"false\",\"bold\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
