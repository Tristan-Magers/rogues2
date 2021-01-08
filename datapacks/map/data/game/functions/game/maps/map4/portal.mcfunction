#red port
execute positioned 79.01 25 -30 run effect give @a[gamemode=adventure,distance=..100,dx=-2.2,dz=-10,dy=25] blindness 1 0 true
execute positioned 160 46 -51.9 run effect give @a[gamemode=adventure,distance=..100,dx=5,dz=1,dy=5] blindness 1 0 true

execute positioned 79.01 25 -30 run tp @a[gamemode=adventure,distance=..100,dx=-2.2,dz=-10,dy=25] 163 47.00 -53 180 0
execute positioned 160 46 -51.9 run execute as @a[gamemode=adventure,distance=..100,dx=5,dz=1,dy=5] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 59.01 25 -30 run effect give @a[gamemode=adventure,distance=..100,dx=2.2,dz=-10,dy=25] blindness 1 0 true
execute positioned 160 38 -102 run effect give @a[gamemode=adventure,distance=..100,dz=0.5,dx=5,dy=5] blindness 1 0 true

execute positioned 59.01 25 -30 run tp @a[gamemode=adventure,distance=..100,dx=2.2,dz=-10,dy=25] 163 39.00 -97 0 0
execute positioned 160 38 -102 run execute as @a[gamemode=adventure,distance=..100,dz=0.5,dx=5,dy=5] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava 163 49 -51.9 1.5 1.1 0 0 1 force @a[x=163,y=49,z=-51,distance=..35]
particle minecraft:dripping_lava 77.94 38.76 -32.24 0 1.3 1.5 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 163 40 -100.2 2.3 1.5 0 0 1 force @a[x=163,y=40,z=-100,distance=..35]
particle minecraft:dripping_water 61.57 38.00 -32.58 0 2 1.5 0 1 force @a[x=61,y=38,z=-32,distance=..35]
