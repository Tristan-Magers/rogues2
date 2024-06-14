execute as @s[scores={frost=0}] at @s run tp @s ^ ^ ^.2
tag @s remove in
execute as @s at @s positioned ~ ~1.5 ~ run function game:detailin
execute as @s[tag=in,scores={frost=0}] at @s run tp @s ^ ^ ^.2
tag @s remove in
execute as @s at @s positioned ~ ~1.5 ~ run function game:detailin
execute as @s[tag=in,scores={frost=0}] at @s run tp @s ^ ^ ^.2
tag @s remove in
execute as @s at @s positioned ~ ~1.5 ~ run function game:detailin
scoreboard players add @s frost 0
scoreboard players add @s[scores={frost=1..}] frost 1
scoreboard players add @s frostT 1
scoreboard players add @s[scores={frost=0},tag=!in] frost 1
execute as @s[scores={frost=38..}] at @s positioned ~-.5 ~ ~-.5 run fill ~ 0 ~ ~1 ~3 ~1 air replace minecraft:packed_ice
execute as @s[scores={frost=38..}] at @s run execute as @e[tag=frostwall,type=!player,scores={frost=2..37}] at @s positioned ~-.5 ~ ~-.5 run fill ~ 0 ~ ~1 ~3 ~1 minecraft:packed_ice replace air
kill @s[scores={frost=38..}]
execute as @s[scores={frost=1}] at @s positioned ~-.5 ~ ~-.5 run fill ~ 0 ~ ~1 ~3 ~1 minecraft:packed_ice replace air
execute as @s[x=-100,y=40,z=50,distance=..100,scores={frost=1}] at @s positioned ~-.5 ~ ~-.5 run fill ~ 46 ~ ~1 0 ~1 minecraft:air replace packed_ice
kill @s[scores={frostT=200..,frost=0}]
execute as @e[scores={frost=3}] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:air}]}