#red port
execute positioned 70.51 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned 148 12 165 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=-10,dy=25,scores={notele=..0}] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] 151 12 167 ~ ~
execute positioned 148 12 165 run tp @a[gamemode=adventure,distance=..100,dx=6,dz=-10,dy=25,scores={notele=..0}] 69 38.3 -30 180 0

#blue port
execute positioned 68.01 25 -43.5 run effect give @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned 141 10 227 run effect give @a[gamemode=adventure,distance=..100,dx=6,dz=2,dy=10,scores={notele=..0}] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tp @a[gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] 144 10 226 ~180 ~
execute positioned 141 10 227 run execute as @a[gamemode=adventure,distance=..100,dx=6,dz=2,dy=10,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#particles

particle minecraft:dripping_lava 151 13.5 165.9 2.3 1.5 0 0 1 force @a[x=151,y=13,z=165,distance=..35]
particle minecraft:dripping_lava 75.5 39.5 -41.14 1.5 1.3 0 0 1 force @a[x=77,y=38,z=-32,distance=..35]

particle minecraft:dripping_water 144 11.5 228.1 2 1.5 0 0 1 force @a[x=144,y=11,z=228,distance=..35]
particle minecraft:dripping_water 63.5 38.5 -41.14 1.5 1.3 0 0 1 force @a[x=61,y=38,z=-32,distance=..35]
