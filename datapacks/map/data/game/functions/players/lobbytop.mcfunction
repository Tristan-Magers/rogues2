tag @s[x=-122,y=53,z=3,distance=..22] add arena

execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate run tag @s add tele

tp @s[tag=tele] @e[tag=arenat,limit=1,sort=random]
execute as @s[tag=tele] at @s run playsound minecraft:entity.enderman.teleport master @s
tag @s remove tele

title @s[tag=arena,tag=!inarena] times 4 18 10
title @s[tag=arena,tag=!inarena] title {"text":"Entering Arena","color":"gold"}
title @s[tag=arena,tag=!inarena] subtitle {"text":"PVP ENABLED","color":"red"}

title @s[tag=!arena,tag=inarena] times 4 18 10
title @s[tag=!arena,tag=inarena] title {"text":"Leaving Arena","color":"gold"}
title @s[tag=!arena,tag=inarena] subtitle {"text":"PVP DISABLED","color":"green"}

effect clear @s[tag=arena] weakness

tag @s[tag=arena] add inarena
tag @s[tag=!arena] remove inarena

clear @s iron_horse_armor
clear @s golden_horse_armor
clear @s diamond_horse_armor