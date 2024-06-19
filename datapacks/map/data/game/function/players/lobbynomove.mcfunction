execute as @s[tag=ranchar] run scoreboard players operation @s class = @s ranchar

scoreboard players set @s[scores={Mana=10..}] Mana 10
scoreboard players set @s[scores={Mana=..3}] Mana 3
scoreboard players set @s manaT 18

scoreboard players set @s respawn -100
scoreboard players set @s[gamemode=!creative] burnout -100
scoreboard players set @s[gamemode=!creative] boostT -100
scoreboard players set @s[gamemode=!creative] shotCharge -100
scoreboard players set @s[gamemode=!creative] wtimer -100
scoreboard players set @s[gamemode=!creative] btimer -100
scoreboard players set @s[gamemode=!creative] dummylook -100
scoreboard players set @s[gamemode=!creative] portal -100
scoreboard players set @s glowing -1

team leave @s[scores={noname=0..}]
scoreboard players set @s[scores={noname=0..}] noname -2

scoreboard players add @s[tag=!ready,tag=!insel] readytext 1
scoreboard players set @s[tag=ready] readytext 0

title @s[scores={readytext=299..,tutorialtime=..0}] times 16 30 16
title @s[scores={readytext=300..,tutorialtime=..0}] title [{"text":""}]
title @s[scores={readytext=300..,tutorialtime=..0}] actionbar [{"text":"Not Ready","color":"red"},{"text":" (won't join game)","color":"white"}]
scoreboard players set @s[scores={readytext=300..}] readytext 0

tag @s[tag=insel2] add instart
tag @s[tag=!insel2] remove instart

tag @s remove insel
tag @s remove insel2
tag @s[x=1015,y=14,z=1015,distance=..50] add insel
clear @s[x=-144,y=23,z=-42,distance=..20,tag=!instart]
tag @s[x=-144,y=23,z=-42,distance=..20] add insel2
tag @s[x=-87,y=41,z=65,distance=..7] add insel

execute as @s[x=1015,y=14,z=1015,distance=..50] at @s run function game:players/charactersel

effect give @s[tag=!insel] minecraft:speed 1 1 true
effect give @s[tag=insel] minecraft:speed 1 0 true

execute as @s[tag=!insel2] run function game:players/readyitems

scoreboard players add @s class 0
scoreboard players set @s[scores={class=0}] class 1

scoreboard players add @s selwait 1

scoreboard players set @s[tag=!ranchar] ranmask 0
scoreboard players add @s[tag=ranchar] ranmask 1
scoreboard players set @s[scores={ranmask=120..}] ranmask 0

item replace entity @s[tag=!ready] armor.head with minecraft:air

item replace entity @s[scores={ranmask=..20},tag=ready,tag=ranchar] armor.head with minecraft:melon_seeds
item replace entity @s[scores={ranmask=21..40},tag=ready,tag=ranchar] armor.head with minecraft:gold_nugget
item replace entity @s[scores={ranmask=41..60},tag=ready,tag=ranchar] armor.head with minecraft:pink_dye
item replace entity @s[scores={ranmask=61..80},tag=ready,tag=ranchar] armor.head with minecraft:cyan_dye
item replace entity @s[scores={ranmask=81..100},tag=ready,tag=ranchar] armor.head with minecraft:light_gray_dye
item replace entity @s[scores={ranmask=101..120},tag=ready,tag=ranchar] armor.head with minecraft:gray_dye

item replace entity @s[scores={class=2},tag=ready,tag=!ranchar] armor.head with minecraft:melon_seeds
item replace entity @s[scores={class=4},tag=ready,tag=!ranchar] armor.head with minecraft:gold_nugget
item replace entity @s[scores={class=1},tag=ready,tag=!ranchar] armor.head with minecraft:pink_dye
item replace entity @s[scores={class=3},tag=ready,tag=!ranchar] armor.head with minecraft:cyan_dye
item replace entity @s[scores={class=5},tag=ready,tag=!ranchar] armor.head with minecraft:light_gray_dye
item replace entity @s[scores={class=6},tag=ready,tag=!ranchar] armor.head with minecraft:gray_dye

#execute if block ~ ~ ~ minecraft:warped_pressure_plate unless entity @e[scores={Time=1..}] run title @s title {"text":"No Game"}
#execute if block ~ ~ ~ minecraft:warped_pressure_plate unless entity @e[scores={Time=1..}] run tp @s -97 41 62 0 0
#execute if block ~ ~ ~ minecraft:warped_pressure_plate if entity @e[scores={Time=1..}] run function game:players/spartspec

execute if block ~ ~ ~ minecraft:warped_pressure_plate run function game:players/spartspec

execute if block ~ ~ ~ minecraft:crimson_pressure_plate run scoreboard players set @s tutorialtime 1