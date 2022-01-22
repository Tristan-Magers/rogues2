#red port
execute positioned 22 25.75 189.58 run effect give @a[gamemode=adventure,distance=..100,dx=-1,dz=-10,dy=15] blindness 1 0 true
execute positioned -16 21 225 run effect give @a[gamemode=adventure,distance=..100,dx=1,dz=6,dy=5] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25] -13 22 228
execute positioned -16 21 225 run execute as @a[gamemode=adventure,distance=..100,dx=1,dz=6,dy=5] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned -1.58 30.00 186 run effect give @a[gamemode=adventure,distance=..100,dx=-1,dz=-10,dy=15] blindness 1 0 true
execute positioned 3 27 203 run effect give @a[gamemode=adventure,distance=..100,dx=8,dz=2,dy=10] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25] 7 28 207 ~0 ~
execute positioned 3 27 203 run execute as @a[gamemode=adventure,distance=..100,dx=8,dz=2,dy=10] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava -14.2 23.8 228 0 1.5 2.3 0 1
particle minecraft:dripping_lava 75.5 39.5 -41.14 1.5 1.3 0 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 7 29.5 205.8 2 1.5 0 0 1
particle minecraft:dripping_water 63.5 38.5 -41.14 1.5 1.3 0 0 1 force @a[x=61,y=38,z=-32,distance=..35]
