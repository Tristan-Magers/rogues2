scoreboard players add @s move 1
kill @s[scores={move=49..}]

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

execute as @s at @s run tag @s remove in
execute as @s at @s if block ~ ~ ~ air run tag @s add in
execute as @s[tag=!in] at @s run function game:detailin
execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.42

tag @s[scores={y=..-200,x=-100..100,z=-100..100}] add wall

execute as @s[tag=wall] at @s unless entity @e[limit=1,type=area_effect_cloud,tag=smoker,scores={playerID=0},distance=..0.5] run tp @s ~ ~.4 ~
execute as @s[tag=wall] at @s run tag @s remove in
execute as @s[tag=wall] at @s if block ~ ~ ~ air run tag @s add in
execute as @s[tag=wall,tag=!in] at @s run function game:detailin
execute as @s[tag=wall,tag=!in] at @s run tp @s ~ ~-.4 ~

scoreboard players operation @e[type=area_effect_cloud,tag=smoker] playerID += @s playerID

execute as @s[scores={move=45}] at @s run particle minecraft:falling_dust minecraft:snow ~ ~.5 ~ .65 .65 .65 2 30 force

execute as @s[scores={move=45}] at @s run playsound minecraft:entity.wither.spawn master @a[gamemode=adventure,distance=..2] ~ ~ ~ .8 .7
execute as @s[scores={move=45}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 .5
execute as @s[scores={move=45}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 .3
execute as @s[scores={move=45}] at @s run playsound minecraft:block.glass.break master @a[gamemode=adventure,distance=..2] ~ ~ ~ 1 .4
execute as @s[scores={move=45}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.6
execute as @s[scores={move=48}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 .7

execute as @s[scores={move=48}] at @s run particle minecraft:explosion_emitter ~ ~ ~
execute as @s[scores={move=48}] at @s run effect give @a[gamemode=adventure,distance=..2] minecraft:poison 2 2
execute as @s[scores={move=48}] at @s run effect give @a[gamemode=adventure,distance=..2] minecraft:blindness 3 2
execute as @s[scores={move=48}] at @s run effect give @a[gamemode=adventure,distance=..2] minecraft:slowness 3 2

execute as @s[scores={healthreal=..18,move=..44}] at @s run scoreboard players operation @a playerID -= @s playerID
execute as @s[scores={healthreal=..18,move=..44}] at @s run execute as @a[scores={playerID=0}] run me Died
execute as @s[scores={healthreal=..18,move=..44}] at @s run scoreboard players operation @a playerID += @s playerID
execute as @s[scores={healthreal=..18,move=..44}] at @s run playsound minecraft:entity.player.hurt master @a
execute as @s[scores={healthreal=..18,move=..44}] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .3 .8 .3 2 40 force
execute as @s[scores={healthreal=..18,move=..44}] at @s run summon skeleton ~ ~ ~ {NoAI:1,Invulnerable:1,Fire:9000}
execute as @s[scores={healthreal=..18,move=..44}] at @s positioned ~ ~.5 ~ run tp @e[distance=..1,type=minecraft:skeleton] @s
execute as @s[scores={healthreal=..18,move=..44}] at @s run tp @s ~ ~-1000 ~
execute as @s[scores={healthreal=..18,move=..44}] at @s run kill @s