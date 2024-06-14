execute if entity @e[scores={map=1..6}] run tag @s add spec
execute if entity @e[scores={map=1..6}] run tag @s remove ready

execute if entity @e[scores={map=1..6}] run gamemode spectator

execute if entity @e[scores={map=1}] run tp @s 3 25 229 -45 0
execute if entity @e[scores={map=2}] run tp @s 150 18 205 180 15
execute if entity @e[scores={map=3}] run tp @s 136 21 92 45 17
execute if entity @e[scores={map=4}] run tp @s 1163 46 -93 0 0
execute if entity @e[scores={map=5}] run tp @s -992 54 -1000 90 0
execute if entity @e[scores={map=6}] run tp @s 1004 25 -983 90 0

execute if entity @e[scores={map=..0}] run tp @s -93 40 60 -45 -5
execute if entity @e[scores={map=7..}] run tp @s -93 40 60 -45 -5

execute if entity @e[scores={map=1..6}] run tellraw @a [{"text":"* "},{"selector":"@s"},{"text":" Joined Spectators"}]

clear @s

stopsound @s