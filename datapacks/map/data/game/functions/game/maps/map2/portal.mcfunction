#red port
execute positioned 79.01 25 -30 run effect give @a[gamemode=adventure,distance=..100,dx=-2.2,dz=-10,dy=25] blindness 1 0 true
execute positioned 148 12 165 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=-10,dy=25] blindness 1 0 true

execute positioned 79.01 25 -30 run tp @a[gamemode=adventure,distance=..100,dx=-2.2,dz=-10,dy=25] 151 12 167 ~ ~
execute positioned 148 12 165 run tp @a[gamemode=adventure,distance=..100,dx=6,dz=-10,dy=25] 69 38.3 -30 180 0

#blue port
execute positioned 59.01 25 -30 run effect give @a[gamemode=adventure,distance=..100,dx=2.2,dz=-10,dy=25] blindness 1 0 true
execute positioned 141 10 227 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=2,dy=10] blindness 1 0 true

execute positioned 59.01 25 -30 run tp @a[gamemode=adventure,distance=..100,dx=2.2,dz=-10,dy=25] 144 10 226 ~180 ~
execute positioned 141 10 227 run execute as @a[gamemode=adventure,distance=..100,dx=6,dz=2,dy=10] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava 151 13.5 165.9 2.3 1.5 0 0 1
particle minecraft:dripping_lava 77.94 38.76 -32.24 0 2.1 1.5 0 1

particle minecraft:dripping_water 144 11.5 228.1 2 1.5 0 0 1
particle minecraft:dripping_water 61.57 38.00 -32.58 0 2 1.5 0 1
