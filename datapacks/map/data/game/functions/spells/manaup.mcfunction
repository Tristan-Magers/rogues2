execute as @s[tag=ingame,gamemode=adventure,scores={class=1}] run function game:characters/sparket/bar
execute as @s[tag=ingame,gamemode=adventure,scores={class=2}] run function game:characters/vohelm/bar
execute as @s[tag=ingame,gamemode=adventure,scores={class=3}] run function game:characters/emma/bar
execute as @s[tag=ingame,gamemode=adventure,scores={class=4}] run function game:characters/pluto/bar
execute as @s[tag=ingame,gamemode=adventure,scores={class=5}] run function game:characters/halt/bar
execute as @s[tag=ingame,gamemode=adventure,scores={class=6}] run function game:characters/barbose/bar

clear @s[gamemode=!creative,tag=!vengeuse,nbt=!{Inventory:[{id:"minecraft:book",Slot:6b}]}] book
replaceitem entity @s[gamemode=!creative,tag=!vengeuse] hotbar.6 minecraft:book{display:{Name:"[{\"text\":\"VENGENCE\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"1 Use\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"] (15 seconds X2 Mana and Heal)\",\"color\":\"white\",\"italic\":\"false\"}]"}}
clear @s[gamemode=!creative,tag=vengeuse] book

execute as @s[tag=lobby] at @s run function game:spells/manaupl
