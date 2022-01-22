#red port
execute positioned 70.51 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25] blindness 1 0 true
execute positioned -1043.0 64 -1023.0 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=6] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25] -1041 64 -1020 0 0
execute positioned -1043.0 64 -1023.0 run execute as @a[gamemode=adventure,distance=..100,dx=6,dz=1,dy=6] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 68.01 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25] blindness 1 0 true
execute positioned -1057 53 -981.0 run effect give @a[gamemode=adventure,distance=..100,dz=5,dx=5,dy=5] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25] -1055 53 -983 180 0
execute positioned -1057 53 -981.0 run execute as @a[gamemode=adventure,distance=..100,dz=5,dx=5,dy=5] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava -1041 65.9 -1021.3 1.5 1.1 0 0 1 force @a[x=-1041,y=65,z=-1021,distance=..35]
particle minecraft:dripping_lava 75.5 39.5 -41.14 1.5 1.3 0 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water -1055 55 -980.75 2.3 1.5 0 0 1 force @a[x=-1055,y=55,z=-980,distance=..35]
particle minecraft:dripping_water 63.5 38.5 -41.14 1.5 1.3 0 0 1 force @a[x=61,y=38,z=-32,distance=..35]

#green
execute positioned -1025.0 38 -987.0 run execute as @a[gamemode=adventure,distance=..100,dz=5,dx=-5,dy=5] at @s run tp @s -1044 54 -990
execute positioned -1042.0 54 -991.0 run execute as @a[gamemode=adventure,distance=..100,dz=5,dx=5,dy=5] at @s run tp @s -1023 38 -986

execute positioned -1003.0 31 -991.0 run scoreboard players set @a[distance=..100,dz=2,dx=2,dy=16] glowing 10
execute positioned -1003.0 31 -1011.0 run scoreboard players set @a[distance=..100,dz=2,dx=2,dy=16] glowing 10
execute positioned -1034.0 31 -1001.0 run scoreboard players set @a[distance=..100,dz=2,dx=2,dy=16] glowing 10

execute positioned -1003.0 31 -991.0 run effect give @a[distance=..100,dz=2,dx=2,dy=16] minecraft:levitation 1 7
execute positioned -1003.0 31 -1011.0 run effect give @a[distance=..100,dz=2,dx=2,dy=16] minecraft:levitation 1 7
execute positioned -1034.0 31 -1001.0 run effect give @a[distance=..100,dz=2,dx=2,dy=16] minecraft:levitation 1 7