scoreboard players add @s timer 1
execute as @s[scores={timer=9}] run playsound minecraft:block.stone.step master @a ~ ~ ~ .2 1.1
scoreboard players set @s[scores={timer=9..}] timer 0

scoreboard players operation @e[type=area_effect_cloud,tag=smoker] playerID -= @s playerID
execute as @s at @s run tp @s ~ ~ ~ facing entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0}]

execute store result score @s healthreal run data get entity @s Health 1

execute store result score @s y run data get entity @s Pos[1] 100
execute store result score @s dy run data get entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0}] Pos[1] 100

execute store result score @s x run data get entity @s Pos[0] 100
execute store result score @s dx run data get entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0}] Pos[0] 100

execute store result score @s z run data get entity @s Pos[2] 100
execute store result score @s dz run data get entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0}] Pos[2] 100

scoreboard players operation @s x -= @s dx
scoreboard players operation @s y -= @s dy
scoreboard players operation @s z -= @s dz

tp @s[scores={move=1}] @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0}]

execute as @s at @s if block ~ ~-.2 ~ air run tp @s ~ ~-.1 ~
execute as @s at @s if block ~ ~-.2 ~ air run tp @s ~ ~-.1 ~

particle minecraft:falling_dust minecraft:black_concrete ~ ~.05 ~ .12 .09 .12 1 2 force

execute as @s at @s unless entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0},distance=..0.5] run tp @s ^ ^ ^.24

tag @s remove wall

tag @s remove in
execute as @s at @s if block ~ ~ ~ air run tag @s add in
execute as @s[tag=!in] at @s run function game:detailin

tag @s[tag=!in] add wall

execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.24
execute as @s[tag=!in] at @s run tp @s ~ ~ ~ ~ -90
execute as @s[tag=!in,scores={y=50..}] at @s run tp @s ~ ~ ~ ~ 0

execute as @s[tag=!in] at @s unless entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0},distance=..0.5] run tp @s ^ ^ ^.42

execute as @s[tag=wall] at @s run tag @s remove in
execute as @s[tag=wall] at @s if block ~ ~ ~ air run tag @s add in
execute as @s[tag=wall,tag=!in] at @s run function game:detailin
execute as @s[tag=wall,tag=!in] at @s run tp @s ^ ^ ^-.42

tag @s[scores={y=..-200,x=-100..100,z=-100..100}] add wall

execute as @s[tag=wall] at @s unless entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0},distance=..0.5] run tp @s ~ ~.4 ~
execute as @s[tag=wall] at @s run tag @s remove in
execute as @s[tag=wall] at @s if block ~ ~ ~ air run tag @s add in
execute as @s[tag=wall,tag=!in] at @s run function game:detailin
execute as @s[tag=wall,tag=!in] at @s run tp @s ~ ~-.4 ~

scoreboard players operation @e[type=area_effect_cloud,tag=smoker] playerID += @s playerID