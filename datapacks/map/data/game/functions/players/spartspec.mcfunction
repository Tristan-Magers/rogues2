tag @s add spec
tag @s remove ready

gamemode spectator

execute if entity @e[scores={map=1}] run tp @s 3 25 229 -45 0
execute if entity @e[scores={map=2}] run tp @s 150 18 205 180 15
execute if entity @e[scores={map=3}] run tp @s 136 21 92 45 17
execute if entity @e[scores={map=4}] run tp @s 163 46 -93 0 0
execute if entity @e[scores={map=5}] run tp @s -992 54 -1000 90 0

me Joined Spectators

stopsound @s