#clear @s barrier
clear @s[scores={Mana=..5}] blaze_rod
clear @s[scores={Mana=..6,wtimer=..0}] coal
clear @s[scores={Mana=..8,btimer=..0}] charcoal
clear @s[scores={Mana=..8}] blaze_powder
clear @s[scores={Mana=..3}] brick

scoreboard players add burnout 0

execute as @s[scores={Mana=..5,wtimer=..0}] run replaceitem entity @s hotbar.0 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..7,btimer=..0}] run replaceitem entity @s hotbar.1 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..4}] run replaceitem entity @s hotbar.2 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..7}] run replaceitem entity @s hotbar.3 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..2}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=6..,wtimer=..0},nbt=!{Inventory:[{id:"minecraft:coal",Slot:0b}]}] run replaceitem entity @s hotbar.0 coal{display:{Name:"[{\"text\":\"Fire Fist\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2.8s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=8..,btimer=..0},nbt=!{Inventory:[{id:"minecraft:charcoal",Slot:1b}]}] run replaceitem entity @s hotbar.1 charcoal{display:{Name:"[{\"text\":\"Flame Bow\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Arrows\",\"color\":\"aqua\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"8 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=5..},nbt=!{Inventory:[{id:"minecraft:blaze_rod",Slot:2b}]}] run replaceitem entity @s hotbar.2 blaze_rod{display:{Name:"[{\"text\":\"Fire Breath\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=8..,burnout=..0},nbt=!{Inventory:[{id:"minecraft:blaze_powder",Slot:3b}]}] run replaceitem entity @s hotbar.3 blaze_powder{display:{Name:"[{\"text\":\"Burnout\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"8 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=3..},nbt=!{Inventory:[{id:"minecraft:brick",Slot:4b}]}] run replaceitem entity @s hotbar.4 brick{display:{Name:"[{\"text\":\"Zero-Gravity\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

execute as @s[scores={boostT=1..}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"In-Use\",\"color\":\"white\",\"italic\":\"false\"}"}} 1