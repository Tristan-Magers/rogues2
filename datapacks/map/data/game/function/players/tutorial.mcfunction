item replace entity @s[scores={tutorialtime=1..50}] armor.head with minecraft:air
item replace entity @s[scores={tutorialtime=51..569}] armor.head with minecraft:carved_pumpkin
item replace entity @s[scores={tutorialtime=570}] armor.head with minecraft:air

#
title @s[scores={tutorialtime=47}] times 3 3 3
#title @s[scores={tutorialtime=47}] title {"translate":"\u0001","font":"title"}
title @s[scores={tutorialtime=97}] times 3 3 3
title @s[scores={tutorialtime=97}] title {"translate":"\u0001","font":"title"}
title @s[scores={tutorialtime=167}] title {"translate":"\u0001","font":"title"}
title @s[scores={tutorialtime=217}] title {"translate":"\u0001","font":"title"}
title @s[scores={tutorialtime=267}] title {"translate":"\u0001","font":"title"}
title @s[scores={tutorialtime=527}] times 30 20 10
title @s[scores={tutorialtime=527}] title {"translate":"\u0001","font":"title"}

gamemode adventure @s[scores={tutorialtime=1..579}]

tp @s[scores={tutorialtime=1}] -156 41 -42 90 0
tp @s[scores={tutorialtime=51}] -109 45 56 180 30
tp @s[scores={tutorialtime=101}] 1014 14 1009 -60 0
tp @s[scores={tutorialtime=171}] 1000 26 -994 0 27
tp @s[scores={tutorialtime=221}] 1000 26 -980 -180 30
tp @s[scores={tutorialtime=271}] 1001 34 -985 90 15

gamemode spectator @s[scores={tutorialtime=1..579}]

#
execute as @s[scores={tutorialtime=1}] at @s run function game:players/tutorial_view
execute as @s[scores={tutorialtime=51}] at @s run function game:players/tutorial_view
execute as @s[scores={tutorialtime=101}] at @s run function game:players/tutorial_view
execute as @s[scores={tutorialtime=171}] at @s run function game:players/tutorial_view
execute as @s[scores={tutorialtime=221}] at @s run function game:players/tutorial_view

#
scoreboard players operation @e[tag=tutorial_view] playerID -= @s playerID

tag @e[tag=tutorial_view] remove my_tut_view
tag @e[tag=tutorial_view,scores={playerID=0},limit=1] add my_tut_view
kill @e[tag=tutorial_view,tag=!my_tut_view,scores={playerID=0}]

#
scoreboard players operation @e[tag=tutorial_view] playerID += @s playerID

#
#title @s[scores={tutorialtime=1}] actionbar {"text":"Welcome to Rogues 2","font":"fancy"}
execute as @s[scores={tutorialtime=1}] as @e[tag=my_tut_view] at @s run tp @s -156 42 -42 90 -10
execute as @s[scores={tutorialtime=2..50}] as @e[tag=my_tut_view] at @s run tp @s ^ ^ ^.1 90 0

title @s[scores={tutorialtime=51}] actionbar {"text":"A full moon is coming","font":"fancy"}
execute as @s[scores={tutorialtime=51}] as @e[tag=my_tut_view] at @s run tp @s -109 45 56 180 15
execute as @s[scores={tutorialtime=52..100}] as @e[tag=my_tut_view] at @s run tp @s ^0.01 ^-0.01 ^.05 180 15

title @s[scores={tutorialtime=101}] actionbar {"text":"Select a Spirit to embody","font":"fancy"}
execute as @s[scores={tutorialtime=101}] as @e[tag=my_tut_view] at @s run tp @s 1014 15 1009 -60 0
execute as @s[scores={tutorialtime=102..170}] as @e[tag=my_tut_view] at @s run tp @s ^-0.04 ^ ^ ~1.96 ~

title @s[scores={tutorialtime=171}] actionbar {"text":"Collect Souls","font":"fancy"}
execute as @s[scores={tutorialtime=171}] as @e[tag=my_tut_view] at @s run tp @s 1000 26 -994 0 7
execute as @s[scores={tutorialtime=172..220}] as @e[tag=my_tut_view] at @s run tp @s ^ ^ ^.11 0 7

title @s[scores={tutorialtime=221}] actionbar [{"text":"Return them to the ","font":"fancy"},{"text":"Spirit Realm","color":"gold","font":"fancy"},{"text":" (portals).","color":"white","font":"fancy"}]
execute as @s[scores={tutorialtime=221}] as @e[tag=my_tut_view] at @s run tp @s 1000 26 -980 -180 10
execute as @s[scores={tutorialtime=222..270}] as @e[tag=my_tut_view] at @s run tp @s ^ ^ ^.15 -180 10

title @s[scores={tutorialtime=271}] actionbar [{"text":"Fend off other spirits","font":"fancy"}]
title @s[scores={tutorialtime=331}] actionbar [{"text":"You are invisible...however","font":"fancy"}]
title @s[scores={tutorialtime=391}] actionbar [{"text":"The more you move, the more you can be seen","font":"fancy"}]
title @s[scores={tutorialtime=491}] actionbar [{"text":"Good luck","font":"fancy"}]
execute as @s[scores={tutorialtime=271}] as @e[tag=my_tut_view] at @s run tp @s 1001 35 -985 90 15
execute as @s[scores={tutorialtime=272..340}] as @e[tag=my_tut_view] at @s run tp @s ^ ^-0.102 ^ ~ ~-0.09
execute as @s[scores={tutorialtime=341..491}] as @e[tag=my_tut_view] at @s run tp @s ^ ^ ^0.135

execute as @s[scores={tutorialtime=1..568}] run spectate @e[tag=my_tut_view,limit=1]

execute as @s[scores={tutorialtime=569}] run kill @e[tag=my_tut_view]

tp @s[scores={tutorialtime=570}] -145 23 -43 90 -1

gamemode adventure @s[scores={tutorialtime=570}]

scoreboard players add @s tutorialtime 1
scoreboard players set @s[scores={tutorialtime=571..}] tutorialtime 0
effect clear @s speed