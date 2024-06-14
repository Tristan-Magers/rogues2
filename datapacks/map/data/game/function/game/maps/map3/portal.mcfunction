#red port
execute positioned 70.51 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned 135 13 125.1 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=3,scores={notele=..0}] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] 137 14 124 180 0
execute positioned 135 13 125.1 run execute as @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=3,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 68.01 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned 97 11 123 run effect give @a[gamemode=adventure,distance=..100,dx=1,dz=6,dy=10,scores={notele=..0}] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] 100 11 127 -90 0
execute positioned 97 11 123 run execute as @a[gamemode=adventure,distance=..100,dx=1,dz=6,dy=10,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava 137 15 125.2 1.3 1.5 0 0 1 force @a[x=137,y=15,z=125,distance=..35]
particle minecraft:dripping_lava 75.5 39.5 -41.14 1.5 1.3 0 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 98.8 13 126 0 1.5 2.3 0 1 force @a[x=98,y=13,z=126,distance=..35]
particle minecraft:dripping_water 63.5 38.5 -41.14 1.5 1.3 0 0 1 force @a[x=61,y=38,z=-32,distance=..35]

#jump pads (because im too lazy for another function)
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~ ~ minecraft:warped_pressure_plate run effect give @s minecraft:jump_boost 1 12
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~ ~ minecraft:warped_pressure_plate run scoreboard players set @s glowing 15
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~ ~ minecraft:warped_pressure_plate run tag @s add nofalldam
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~-1 ~ minecraft:warped_pressure_plate run effect give @s minecraft:jump_boost 1 12
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~-1 ~ minecraft:warped_pressure_plate run scoreboard players set @s glowing 15
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~-1 ~ minecraft:warped_pressure_plate run tag @s add nofalldam
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~-2 ~ minecraft:warped_pressure_plate run effect give @s minecraft:jump_boost 1 12
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~-2 ~ minecraft:warped_pressure_plate run scoreboard players set @s glowing 15
execute as @a[x=120,y=6,z=94,distance=..9] at @s if block ~ ~-2 ~ minecraft:warped_pressure_plate run tag @s add nofalldam