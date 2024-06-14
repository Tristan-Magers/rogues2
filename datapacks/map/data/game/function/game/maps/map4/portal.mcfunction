#red port
execute positioned 70.51 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned 1160 46 -51.9 run effect give @a[gamemode=adventure,distance=..100,dx=5,dz=1,dy=5,scores={notele=..0}] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] 1163 47.00 -53 180 0
execute positioned 1160 46 -51.9 run execute as @a[gamemode=adventure,distance=..100,dx=5,dz=1,dy=5,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 68.01 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned 1160 38 -102 run effect give @a[gamemode=adventure,distance=..100,dz=0.5,dx=5,dy=5,scores={notele=..0}] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] 1163 39.00 -97 0 0
execute positioned 1160 38 -102 run execute as @a[gamemode=adventure,distance=..100,dz=0.5,dx=5,dy=5,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava 1163 49 -51.9 1.5 1.1 0 0 1 force @a[x=1163,y=49,z=-51,distance=..35]
particle minecraft:dripping_lava 75.5 39.5 -41.14 1.5 1.3 0 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 1163 40 -100.2 2.3 1.5 0 0 1 force @a[x=1163,y=40,z=-100,distance=..35]
particle minecraft:dripping_water 63.5 38.5 -41.14 1.5 1.3 0 0 1 force @a[x=61,y=38,z=-32,distance=..35]
