tag @s[x=-122,y=53,z=3,distance=..33] add arena
tag @s[x=-125.0,y=58.0,z=26.0,dx=6,dy=10,dz=10,distance=..33] remove arena
tag @s[x=-103.0,y=47.0,z=34.0,dx=-9,dy=30,dz=-10,distance=..100] remove arena
tag @s[x=-112.0,y=55.0,z=23.0,dx=-1,dy=30,dz=3,distance=..100] add arena

execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate run tag @s add tele

tp @s[tag=tele] @e[tag=arenat,limit=1,sort=random]
execute as @s[tag=tele] at @s run playsound minecraft:entity.enderman.teleport master @s
tag @s remove tele

title @s[tag=arena,tag=!inarena,scores={tutorialtime=..0}] times 4 18 10
title @s[tag=arena,tag=!inarena] title {"text":"Entering Arena","color":"gold","font":"fancy"}
title @s[tag=arena,tag=!inarena] subtitle {"text":"PVP ENABLED","color":"red","font":"fancy"}

title @s[tag=!arena,tag=inarena,scores={tutorialtime=..0}] times 4 18 10
title @s[tag=!arena,tag=inarena] title {"text":"Leaving Arena","color":"gold","font":"fancy"}
title @s[tag=!arena,tag=inarena] subtitle {"text":"PVP DISABLED","color":"green","font":"fancy"}

effect clear @s[tag=arena] weakness

tag @s[tag=arena] add inarena
tag @s[tag=!arena] remove inarena

clear @s iron_horse_armor
clear @s golden_horse_armor
clear @s diamond_horse_armor