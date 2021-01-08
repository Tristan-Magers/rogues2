clear @s barrier
clear @s[scores={Mana=..3,wtimer=..0}] feather
clear @s[scores={Mana=..9,btimer=..0}] nether_brick
clear @s[scores={Mana=..4}] iron_ingot
clear @s[scores={Mana=..5}] bone_meal
clear @s[scores={Mana=..5}] iron_nugget

execute as @s[scores={Mana=..2,wtimer=..0}] run replaceitem entity @s hotbar.0 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..3}] run replaceitem entity @s hotbar.2 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={hover=16..}] run replaceitem entity @s hotbar.2 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..8,btimer=..0}] run replaceitem entity @s hotbar.1 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run replaceitem entity @s hotbar.3 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..4}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=3..,wtimer=..0}] run replaceitem entity @s hotbar.0 feather{display:{Name:"[{\"text\":\"Draining Claw\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"one hit\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"] (Boost and heal on hit)\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=4..,hover=..27}] run replaceitem entity @s hotbar.2 iron_nugget{display:{Name:"[{\"text\":\"Hover\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=9..,btimer=..0}] run replaceitem entity @s hotbar.1 nether_brick{display:{Name:"[{\"text\":\"Ghost Shot\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Arrows\",\"color\":\"aqua\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"9 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=5..}] run replaceitem entity @s hotbar.3 iron_ingot{display:{Name:"[{\"text\":\"Web Shot\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=5..}] run replaceitem entity @s hotbar.4 bone_meal{display:{Name:"[{\"text\":\"Spider\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

execute as @s[scores={Mana=0..}] run replaceitem entity @s hotbar.5 paper{display:{Name:"[{\"text\":\"Crouch to climb walls (passive effect)\",\"color\":\"gold\",\"italic\":\"false\",\"bold\":\"true\"}]"}}

