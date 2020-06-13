scoreboard players set @a[scores={trident=2..}] trident 0

clear @s barrier
clear @s[scores={trident=..0}] trident
clear @s[scores={Mana=..5}] kelp
clear @s[scores={Mana=..5}] light_blue_dye
clear @s[scores={Mana=..2}] diamond
clear @s[scores={Mana=..6}] clay_ball
clear @s[scores={Mana=..3}] potion

execute as @s[scores={Mana=..3,trident=..0}] run replaceitem entity @s hotbar.0 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..4}] run replaceitem entity @s hotbar.1 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..1}] run replaceitem entity @s hotbar.2 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run replaceitem entity @s hotbar.3 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..3}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=4..,trident=..0}] run replaceitem entity @s hotbar.0 kelp{display:{Name:"[{\"text\":\"Water Trident\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=5..}] run replaceitem entity @s hotbar.1 light_blue_dye{display:{Name:"[{\"text\":\"Bolt\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=2..}] run replaceitem entity @s hotbar.2 diamond{display:{Name:"[{\"text\":\"Frost Pillar\",\"color\":\"blue\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=6..}] run replaceitem entity @s hotbar.3 clay_ball{display:{Name:"[{\"text\":\"Wave\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"] (pushes players)\",\"color\":\"white\",\"italic\":\"false\"}]"}}
