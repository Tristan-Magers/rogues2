execute as @a[scores={Invul=..0,shield=..0}] at @s if block ~ ~-.4 ~ minecraft:black_stained_glass run effect give @s wither 1 20

execute as @e[type=minecraft:skeleton] at @s run tp @s ~ ~-.1 ~

#portal
function game:game/lobbyport
execute if entity @e[scores={map=1}] run function game:game/maps/map1/portal
execute if entity @e[scores={map=2}] run function game:game/maps/map2/portal
execute if entity @e[scores={map=3}] run function game:game/maps/map3/portal
execute if entity @e[scores={map=4}] run function game:game/maps/map4/portal
execute if entity @e[scores={map=5}] run function game:game/maps/map5/portal
execute if entity @e[scores={map=6}] run function game:game/maps/map6/portal

#spec correct

#lavatick
execute if entity @e[scores={map=2,lavatick=100..}] run function game:game/maps/map2/lavatick
execute if entity @e[scores={map=4,lavatick=5..}] run fill 1212 26 -107 1171 26 -36 air replace water
execute if entity @e[scores={map=4,lavatick=5..}] run scoreboard players set @e[scores={lavatick=1..}] lavatick 0

execute if entity @e[scores={map=6,lavatick=5..}] run fill 1017 22 -983 1016 20 -983 vine[south=true] replace air
execute if entity @e[scores={map=6,lavatick=5..}] run scoreboard players set @e[scores={lavatick=1..}] lavatick 0

#capture point code
tag @a remove point
execute if entity @e[scores={map=1}] run execute as @e[tag=map1,name=point,type=minecraft:armor_stand] at @s run function game:game/point
execute if entity @e[scores={map=2}] run execute as @e[tag=map2,name=point,type=minecraft:armor_stand] at @s run function game:game/point
execute if entity @e[scores={map=3}] run execute as @e[tag=map3,name=point,type=minecraft:armor_stand] at @s run function game:game/point
execute if entity @e[scores={map=4}] run execute as @e[tag=map4,name=point,type=minecraft:armor_stand] at @s run function game:game/point
execute if entity @e[scores={map=5}] run execute as @e[tag=map5,name=point,type=minecraft:armor_stand] at @s run function game:game/point
execute if entity @e[scores={map=6}] run execute as @e[tag=map6,name=point,type=minecraft:armor_stand] at @s run function game:game/point

tag @e[name=point] remove current_game_point
execute if entity @e[scores={Time=1..5000}] if entity @e[scores={map=1}] run execute as @e[tag=map1,name=point,type=minecraft:armor_stand] at @s run tag @s add current_game_point
execute if entity @e[scores={Time=1..5000}] if entity @e[scores={map=2}] run execute as @e[tag=map2,name=point,type=minecraft:armor_stand] at @s run tag @s add current_game_point
execute if entity @e[scores={Time=1..5000}] if entity @e[scores={map=3}] run execute as @e[tag=map3,name=point,type=minecraft:armor_stand] at @s run tag @s add current_game_point
execute if entity @e[scores={Time=1..5000}] if entity @e[scores={map=4}] run execute as @e[tag=map4,name=point,type=minecraft:armor_stand] at @s run tag @s add current_game_point
execute if entity @e[scores={Time=1..5000}] if entity @e[scores={map=5}] run execute as @e[tag=map5,name=point,type=minecraft:armor_stand] at @s run tag @s add current_game_point
execute if entity @e[scores={Time=1..5000}] if entity @e[scores={map=6}] run execute as @e[tag=map6,name=point,type=minecraft:armor_stand] at @s run tag @s add current_game_point

#if no points are ready, start spawning faster x10
execute unless entity @e[tag=current_game_point,name=point,type=minecraft:armor_stand,scores={pointsT=390..}] run scoreboard players add @e[tag=current_game_point] pointsT 4
execute unless entity @e[tag=current_game_point,name=point,type=minecraft:armor_stand,scores={pointsT=390..}] run scoreboard players add @e[tag=current_game_point] pointsT 2
execute unless entity @e[tag=current_game_point,name=point,type=minecraft:armor_stand,scores={pointsT=390..}] run scoreboard players add @e[tag=current_game_point] pointsT 2
execute unless entity @e[tag=current_game_point,name=point,type=minecraft:armor_stand,scores={pointsT=390..}] run scoreboard players add @e[tag=current_game_point] pointsT 1

scoreboard players set @a[tag=!point] pointsT 0
scoreboard players remove @a[scores={nocap=1..}] nocap 1

#
scoreboard players remove @a[scores={notele=1..}] notele 1

#time
execute as @e[scores={Time=-5..}] at @s run function game:game/time

#mountain cliff
effect give @a[gamemode=adventure,x=1150,y=24,z=-105,dx=70,dy=8,dz=80] minecraft:slow_falling 1 100 true
scoreboard players set @a[gamemode=adventure,x=1150,y=24,z=-105,dx=70,dy=4,dz=80] healthshow 0