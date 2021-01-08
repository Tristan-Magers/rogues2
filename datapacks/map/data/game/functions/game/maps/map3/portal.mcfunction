#red port
execute positioned 79.01 25 -30 run effect give @a[gamemode=adventure,distance=..100,dx=-2.2,dz=-10,dy=25] blindness 1 0 true
execute positioned 135 13 125.1 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=3] blindness 1 0 true

execute positioned 79.01 25 -30 run tp @a[gamemode=adventure,distance=..100,dx=-2.2,dz=-10,dy=25] 137 14 124 180 0
execute positioned 135 13 125.1 run execute as @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=3] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 59.01 25 -30 run effect give @a[gamemode=adventure,distance=..100,dx=2.2,dz=-10,dy=25] blindness 1 0 true
execute positioned 97 11 123 run effect give @a[gamemode=adventure,distance=..100,dx=1,dz=6,dy=10] blindness 1 0 true

execute positioned 59.01 25 -30 run tp @a[gamemode=adventure,distance=..100,dx=2.2,dz=-10,dy=25] 100 11 127 -90 0
execute positioned 97 11 123 run execute as @a[gamemode=adventure,distance=..100,dx=1,dz=6,dy=10] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava 137 15 125.2 1.3 1.5 0 0 1 force @a[x=137,y=15,z=125,distance=..35]
particle minecraft:dripping_lava 77.94 38.76 -32.24 0 2.1 1.5 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 98.8 13 126 0 1.5 2.3 0 1 force @a[x=98,y=13,z=126,distance=..35]
particle minecraft:dripping_water 61.57 38.00 -32.58 0 2 1.5 0 1 force @a[x=61,y=38,z=-32,distance=..35]
