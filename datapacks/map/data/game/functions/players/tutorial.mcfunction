title @s[scores={tutorialtime=1}] times 20 180 20
tp @s[scores={tutorialtime=1}] -156 41 -42 90 0
title @s[scores={tutorialtime=1}] actionbar {"text":"Welcome to Rogues 2."}
effect give @s[scores={tutorialtime=1}] blindness 1 0 true
tp @s[scores={tutorialtime=2..60}] ^ ^ ^.1 90 0

title @s[scores={tutorialtime=61}] times 20 180 20
tp @s[scores={tutorialtime=61}] -109 45 56 180 30
title @s[scores={tutorialtime=61}] actionbar {"text":"A full moon is coming."}
effect give @s[scores={tutorialtime=59}] blindness 1 0 true
tp @s[scores={tutorialtime=62..120}] ^ ^ ^.1 180 30

title @s[scores={tutorialtime=121}] times 20 180 20
tp @s[scores={tutorialtime=121}] 1014 14 1009 -60 0
title @s[scores={tutorialtime=121}] actionbar {"text":"Select a Spirit to embody."}
effect give @s[scores={tutorialtime=119}] blindness 1 0 true
tp @s[scores={tutorialtime=122..240}] ^-0.04 ^ ^ ~1 ~

title @s[scores={tutorialtime=241}] times 20 180 20
tp @s[scores={tutorialtime=241}] 1000 26 -994 0 27
title @s[scores={tutorialtime=241}] actionbar {"text":"Collect Souls."}
effect give @s[scores={tutorialtime=239}] blindness 1 0 true
tp @s[scores={tutorialtime=242..300}] ^ ^ ^.1 0 27

tp @s[scores={tutorialtime=301}] 1000 26 -980 -180 30
title @s[scores={tutorialtime=301}] actionbar [{"text":"Return them to the "},{"text":"Spirit Realm","color":"gold"},{"text":" (portals).","color":"white"}]
effect give @s[scores={tutorialtime=299}] blindness 1 0 true
tp @s[scores={tutorialtime=302..380}] ^ ^ ^.1 -180 30

tp @s[scores={tutorialtime=301}] 1000 26 -980 -180 30
title @s[scores={tutorialtime=301}] actionbar [{"text":"Return them to the "},{"text":"Spirit Realm","color":"gold"},{"text":" (portals).","color":"white"}]
effect give @s[scores={tutorialtime=299}] blindness 1 0 true
tp @s[scores={tutorialtime=302..380}] ^ ^ ^.1 -180 30

tp @s[scores={tutorialtime=381}] 1001 34 -985 90 15
title @s[scores={tutorialtime=381}] actionbar [{"text":"Fend off other spirits."}]
title @s[scores={tutorialtime=471}] actionbar [{"text":"Remember, you are invisible."}]
title @s[scores={tutorialtime=561}] actionbar [{"text":"The more you move, the more visible you are."}]
title @s[scores={tutorialtime=651}] actionbar [{"text":"Good luck."}]
effect give @s[scores={tutorialtime=379}] blindness 1 0 true
effect give @s[scores={tutorialtime=620}] blindness 5 0 true
tp @s[scores={tutorialtime=382..450}] ^ ^-0.09 ^ facing 972 20 -985
tp @s[scores={tutorialtime=451..620}] ^ ^ ^0.12 facing 972 20 -985

tp @s[scores={tutorialtime=700}] -145 23 -43 90 -1

gamemode spectator @s[scores={tutorialtime=..700}]
gamemode adventure @s[scores={tutorialtime=700}]

scoreboard players add @s tutorialtime 1
scoreboard players set @s[scores={tutorialtime=701..}] tutorialtime 0
effect clear @s speed