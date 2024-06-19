#red port
execute positioned 70.51 25 -43.5 run effect give @a[tag=spirlob,gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned -81.9 58.0 40.0 run effect give @a[tag=lobby,gamemode=adventure,distance=..100,dx=1,dz=6,dy=5,scores={notele=..0}] blindness 1 0 true

execute positioned 70.51 25 -43.5 run tag @a[tag=spirlob,gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] add tpno
execute positioned 70.51 25 -43.5 run tp @a[tag=spirlob,gamemode=adventure,distance=..100,dz=2.2,dx=10,dy=25,scores={notele=..0}] -84 58 42 90 0

execute positioned -81.9 58.0 40.0 run tag @a[tag=lobby,gamemode=adventure,distance=..100,dx=1,dz=6,dy=5,scores={notele=..0}] add spirlob
execute positioned -81.9 58.0 40.0 run execute as @a[tag=lobby,gamemode=adventure,distance=..100,dx=1,dz=6,dy=5,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#blue port
execute positioned 68.01 25 -43.5 run effect give @a[tag=spirlob,gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] blindness 1 0 true
execute positioned -129.0 54.0 67.0 run effect give @a[tag=lobby,gamemode=adventure,distance=..100,dx=-4,dz=6,dy=5,scores={notele=..0}] blindness 1 0 true

execute positioned 68.01 25 -43.5 run tag @a[tag=spirlob,gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] add tpno
execute positioned 68.01 25 -43.5 run tp @a[tag=spirlob,gamemode=adventure,distance=..100,dz=2.2,dx=-10,dy=25,scores={notele=..0}] -127 53.00 69 -90 0

execute positioned -129.0 54.0 67.0 run tag @a[tag=lobby,gamemode=adventure,distance=..100,dx=-4,dz=6,dy=5,scores={notele=..0}] add spirlob
execute positioned -129.0 54.0 67.0 run execute as @a[tag=lobby,gamemode=adventure,distance=..100,dx=-4,dz=6,dy=5,scores={notele=..0}] at @s run tp @s 69 38.3 -30 180 0

#
tag @a[tag=tpno] remove spirlob

#particles

particle minecraft:dripping_lava -81.75 59 42 0 1.5 2.3 0 1 force @a[x=-80,y=59,z=42,distance=..26]

particle minecraft:dripping_water -128.3 55.2 69 0 1.5 2 0 1 force @a[x=-127,y=55,z=69,distance=..26]

execute positioned -79.0 44.0 39.0 run execute as @a[tag=lobby,gamemode=adventure,distance=..100,dx=1,dz=6,dy=5,scores={notele=..0}] at @s run tag @s add portsound
execute positioned -79.0 44.0 39.0 run execute as @a[tag=lobby,gamemode=adventure,distance=..100,dx=1,dz=6,dy=5,scores={notele=..0}] at @s run tp @s -145 23 -43 90 -1

execute positioned -156.0 22.0 -45.0 run title @a[distance=..100,dx=-4,dz=6,dy=5] times 20 30 20
execute positioned -156.0 22.0 -45.0 run title @a[distance=..100,dx=-4,dz=6,dy=5] title {"text":"Rogues II","font":"fancy"}
execute positioned -156.0 22.0 -45.0 run title @a[distance=..100,dx=-4,dz=6,dy=5] subtitle {"text":"Season 2.1","font":"fancy","color":"gray"}
execute positioned -156.0 22.0 -45.0 run tag @a[distance=..100,dx=-4,dz=6,dy=5] add portsound2
execute positioned -156.0 22.0 -45.0 run tp @a[distance=..100,dx=-4,dz=6,dy=5] -80 44 41 96.2 ~