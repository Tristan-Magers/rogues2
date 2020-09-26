scoreboard players set @s healthshow 100

scoreboard players remove @s respawn 1

scoreboard players set @s[scores={respawn=90..200,Score=..0}] respawn 90
scoreboard players set @s[scores={respawn=100..200,Score=1}] respawn 100
scoreboard players set @s[scores={respawn=110..200,Score=2}] respawn 110
scoreboard players set @s[scores={respawn=120..200,Score=3}] respawn 120
scoreboard players set @s[scores={respawn=130..200,Score=4}] respawn 130
scoreboard players set @s[scores={respawn=140..200,Score=5}] respawn 140
scoreboard players set @s[scores={respawn=150..200,Score=6}] respawn 150
scoreboard players set @s[scores={respawn=160..200,Score=7}] respawn 160
scoreboard players set @s[scores={respawn=160..200,Score=8}] respawn 170
scoreboard players set @s[scores={respawn=180..200,Score=9}] respawn 180
scoreboard players set @s[scores={respawn=190..200,Score=10}] respawn 190
scoreboard players set @s[scores={respawn=200..200,Score=11..}] respawn 200

gamemode spectator @s[scores={respawn=220}]
scoreboard players set @s[scores={respawn=220}] points 0
scoreboard players set @s[scores={respawn=220}] pointsT 0
gamemode adventure @s[scores={respawn=0}]

gamemode adventure @s[scores={respawn=201}]
gamemode spectator @s[scores={respawn=201}]

execute as @s[scores={respawn=220}] at @s run tp @s ~ ~1 ~
execute as @s[scores={respawn=0..200}] at @s run tp @s -11 39 197 90 0

title @s[scores={respawn=200}] title [{"text":"Respawn in "},{"text":"10","color":"gray"}]
title @s[scores={respawn=180}] title [{"text":"Respawn in "},{"text":"9","color":"dark_red"}]
title @s[scores={respawn=160}] title [{"text":"Respawn in "},{"text":"8","color":"dark_red"}]
title @s[scores={respawn=140}] title [{"text":"Respawn in "},{"text":"7","color":"red"}]
title @s[scores={respawn=120}] title [{"text":"Respawn in "},{"text":"6","color":"red"}]
title @s[scores={respawn=100}] title [{"text":"Respawn in "},{"text":"5","color":"gold"}]
title @s[scores={respawn=80}] title [{"text":"Respawn in "},{"text":"4","color":"gold"}]
title @s[scores={respawn=60}] title [{"text":"Respawn in "},{"text":"3","color":"dark_green"}]
title @s[scores={respawn=40}] title [{"text":"Respawn in "},{"text":"2","color":"dark_green"}]
title @s[scores={respawn=20}] title [{"text":"Respawn in "},{"text":"1","color":"green"}]
title @s[scores={respawn=1}] title [{"text":""}]

title @s[scores={respawn=1..}] times 0 30 10

execute as @s[scores={respawn=201..219}] at @s if block ^ ^ ^-.5 air run tp @s ^ ^ ^-.2
execute as @s[scores={respawn=201..219}] at @s if block ^ ^ ^-.5 air run tp @s @s
tp @s[scores={respawn=0}] 69 38.3 -30 180 0
scoreboard players set @s[scores={respawn=0}] Mana 0
scoreboard players set @s[scores={respawn=0,Score=1}] Mana 1
scoreboard players set @s[scores={respawn=0,Score=2}] Mana 2
scoreboard players set @s[scores={respawn=0,Score=3}] Mana 3
scoreboard players set @s[scores={respawn=0,Score=4}] Mana 4
scoreboard players set @s[scores={respawn=0,Score=5}] Mana 5
scoreboard players set @s[scores={respawn=0}] manaT 0

effect give @s[scores={respawn=0}] speed 1 1 true
#effect give @s[scores={respawn=0,Score=0}] speed 6 1 true
#effect give @s[scores={respawn=0,Score=1}] speed 5 1 true
#effect give @s[scores={respawn=0,Score=2}] speed 4 1 true
#effect give @s[scores={respawn=0,Score=3}] speed 3 1 true
#effect give @s[scores={respawn=0,Score=4}] speed 2 1 true
#effect give @s[scores={respawn=0,Score=5}] speed 1 1 true

execute as @s[scores={respawn=220}] at @s run me Died

scoreboard players set @s portal -2
scoreboard players set @s dummylook -2