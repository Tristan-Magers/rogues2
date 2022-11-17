clear @s barrier
clear @s[scores={Mana=..5}] flint
clear @s[scores={Mana=..8}] sugar_cane
clear @s[scores={Mana=..5}] yellow_dye
clear @s[scores={Mana=..3}] bowl

execute as @s[scores={Mana=..4}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..7}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..4}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..2}] run item replace entity @s hotbar.3 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=5..}] run item replace entity @s hotbar.2 with flint{display:{Name:"[{\"text\":\"Soul Send\",\"color\":\"blue\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Throws a moving orb you will teleport to","color":"white","italic":false}','{"text":"Visible for 1.5 seconds","color":"red","italic":false}']}}
execute as @s[scores={Mana=8..}] run item replace entity @s hotbar.1 with sugar_cane{display:{Name:"[{\"text\":\"Shadow Spikes\",\"color\":\"blue\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"8 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Fires 8, 1 damage spikes","color":"white","italic":false}']}}
execute as @s[scores={Mana=5..}] run item replace entity @s hotbar.4 with yellow_dye{display:{Name:"[{\"text\":\"Regenerate\",\"color\":\"purple\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Heals 3 health over 3 seconds, causing particles","color":"white","italic":false}']}}
execute as @s[scores={Mana=3..}] run item replace entity @s hotbar.3 with bowl{display:{Name:"[{\"text\":\"Jump Pad\",\"color\":\"purple\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Throws a jump pad","color":"white","italic":false}']}}

execute as @s[scores={cooljp=1..}] run item replace entity @s hotbar.3 with ghast_tear{display:{Name:"{\"text\":\"Recharging\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
clear @s[scores={cooljp=..0}] ghast_tear