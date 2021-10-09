#red port
execute positioned 70.51 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25] blindness 1 0 true
execute positioned 997.0 19 -1004.0 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=6] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25] 1000 20 -1001 0 0
execute positioned 997.0 19 -1004.0 run execute as @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=6] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 68.01 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25] blindness 1 0 true
execute positioned 1011.0 21 -974.0 run effect give @a[gamemode=adventure,distance=..100,dz=1,dx=6,dy=7] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25] 1013 24 -976 180 0
execute positioned 1011.0 21 -974.0 run execute as @a[gamemode=adventure,distance=..100,dz=1,dx=6,dy=7] at @s run tp @s 69 38.3 -30 180 0


#particles

particle minecraft:dripping_lava 1000 21.5 -1002.2 1.5 1.1 0 0 1 force @a[x=1000,y=20,z=-1000,distance=..45]
particle minecraft:dripping_lava 75.5 39.5 -41.14 1.5 1.3 0 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 1014 25.5 -973.8 2.3 1.5 0 0 1 force @a[x=1011,y=20,z=-974,distance=..45]
particle minecraft:dripping_water 63.5 38.5 -41.14 1.5 1.3 0 0 1 force @a[x=61,y=38,z=-32,distance=..35]