#clear @s barrier
clear @s[scores={Mana=..4}] blaze_rod
clear @s[scores={Mana=..6,wtimer=..0}] coal
clear @s[scores={Mana=..8,btimer=..0}] charcoal
clear @s[scores={Mana=..7}] blaze_powder
clear @s[scores={Mana=..3}] brick

scoreboard players add burnout 0

execute as @s[scores={Mana=..5,wtimer=..0}] run item replace entity @s hotbar.0 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..7,btimer=..0}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..6}] run item replace entity @s hotbar.3 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={burnoutT=1..}] run item replace entity @s hotbar.3 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=6..,wtimer=..0},nbt=!{Inventory:[{id:"minecraft:coal",Slot:0b}]}] run item replace entity @s hotbar.0 with coal{display:{Name:"[{\"text\":\"Fire Fist\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"A fist to damage and ignite your foes","color":"white","italic":false}','{"text":"5 max damage, fast charge","color":"gold","italic":false}','{"text":"+33% speed","color":"green","italic":false}']}}
execute as @s[scores={Mana=8..,btimer=..0},nbt=!{Inventory:[{id:"minecraft:charcoal",Slot:1b}]}] run item replace entity @s hotbar.1 with charcoal{display:{Name:"[{\"text\":\"Flame Bow\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Arrows\",\"color\":\"aqua\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"8 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Get a bow that sets players on fire!","color":"white","italic":false}','{"text":"Only 2 arrows","color":"red","italic":false}']}}
execute as @s[scores={Mana=4..},nbt=!{Inventory:[{id:"minecraft:blaze_rod",Slot:2b}]}] run item replace entity @s hotbar.2 with blaze_rod{display:{Name:"[{\"text\":\"Fire Breath\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Throws a horizontal moving fireball","color":"white","italic":false}','{"text":"Pierces walls","color":"green","italic":false}']}}
execute as @s[scores={Mana=7..,burnout=..0,burnoutT=..0},nbt=!{Inventory:[{id:"minecraft:blaze_powder",Slot:3b}]}] run item replace entity @s hotbar.3 with blaze_powder{display:{Name:"[{\"text\":\"Burnout\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Dash forward!","color":"white","italic":false}']}}
execute as @s[scores={Mana=4..},nbt=!{Inventory:[{id:"minecraft:brick",Slot:4b}]}] run item replace entity @s hotbar.4 with brick{display:{Name:"[{\"text\":\"Zero-Gravity\",\"color\":\"dark_red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Slow falling and jump boost for 3 seconds","color":"white","italic":false}','{"text":"Jumping causes particles","color":"red","italic":false}']}}

execute as @s[scores={boostT=1..}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"In-Use\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=0..}] run item replace entity @s hotbar.5 with paper{display:{Name:"[{\"text\":\"Healing Fire\",\"color\":\"gold\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" : Heal while not in battle (passive effect)\",\"color\":\"white\",\"italic\":\"false\",\"bold\":\"false\"}]"}}
