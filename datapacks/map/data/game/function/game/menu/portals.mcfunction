particle minecraft:portal -108.5 39.5 41.8 1.5 1.4 0 0 1 force @a[x=-108,y=39,z=41,distance=..28]
particle minecraft:portal -108.5 39.5 41.8 1.5 1.4 0 0 1 force @a[x=-108,y=39,z=41,distance=..11]
particle minecraft:portal -100.2 45.5 39.5 0 1.4 1.5 0 1 force @a[x=-100,y=45,z=39,distance=..28]
particle minecraft:portal -100.2 45.5 39.5 0 1.4 1.5 0 1 force @a[x=-100,y=45,z=39,distance=..11]

particle minecraft:portal 1012 16 1004.8 1.5 1.4 0 0 2 force @a[x=1009,y=16,z=1005,distance=..62]

tag @a[x=-111,y=38,z=40.0,dx=6,dy=6,dz=1,distance=..20] add portsound
tag @a[x=-102,y=43,z=36.0,dz=6,dy=6,dx=1,distance=..20] add portsound

title @a[x=-111,y=38,z=40.0,dx=6,dy=6,dz=1,distance=..20] times 2 12 10
title @a[x=-102,y=43,z=36.0,dz=6,dy=6,dx=1,distance=..20] times 2 12 10

scoreboard players remove @a[scores={blindstop=0..}] blindstop 1
effect give @a[scores={blindstop=0}] minecraft:blindness 1 10

scoreboard players set @a[x=-111,y=38,z=40.0,dx=6,dy=6,dz=1,distance=..20] blindstop 10
scoreboard players set @a[x=-102,y=43,z=36.0,dz=6,dy=6,dx=1,distance=..20] blindstop 10

title @a[x=-111,y=38,z=40.0,dx=6,dy=6,dz=1,distance=..20] title {"text":"Select Spirit","color":"blue"}
title @a[x=-102,y=43,z=36.0,dz=6,dy=6,dx=1,distance=..20] title {"text":"Select Spirit","color":"blue"}

effect give @a[x=-111,y=38,z=40.0,dx=6,dy=6,dz=1,distance=..20] minecraft:blindness 2
effect give @a[x=-102,y=43,z=36.0,dz=6,dy=6,dx=1,distance=..20] minecraft:blindness 2
effect give @a[x=1009,y=13,z=1003.0,dx=6,dy=6,dz=1,distance=..20] minecraft:blindness 1

tp @a[x=-111,y=38,z=40.0,dx=6,dy=6,dz=1,distance=..20] 1012 14 1006 0 0
tp @a[x=-102,y=43,z=36.0,dz=6,dy=6,dx=1,distance=..20] 1012 14 1006 0 0

tag @a[x=1009,y=13,z=1003.0,dx=6,dy=6,dz=1,distance=..20] add portsound2

tp @a[x=1009,y=13,z=1003.0,dx=6,dy=6,dz=1,distance=..20] -109 38 43 0 0