execute as @a at @s if block ~ ~-.4 ~ minecraft:black_stained_glass run effect give @s wither 1 20

execute as @e[type=minecraft:skeleton] at @s run tp @s ~ ~-.1 ~

#portal
execute as @e[scores={map=1}] run function game:game/maps/map1/portal
execute as @e[scores={map=2}] run function game:game/maps/map2/portal
execute as @e[scores={map=3}] run function game:game/maps/map3/portal
execute as @e[scores={map=4}] run function game:game/maps/map4/portal

#lavatick
execute as @e[scores={map=2,lavatick=29..}] run function game:game/maps/map2/lavatick

#capture point code
tag @a remove point
execute as @e[name=point,type=minecraft:armor_stand] at @s run function game:game/point
scoreboard players set @a[tag=!point] pointsT 0

#time
execute as @e[scores={Time=-5..}] at @s run function game:game/time

#mountain cliff
effect give @a[gamemode=adventure,x=150,y=24,z=-105,dx=70,dy=8,dz=80] minecraft:slow_falling 1 100 true
scoreboard players set @a[gamemode=adventure,x=150,y=24,z=-105,dx=70,dy=4,dz=80] healthshow 0