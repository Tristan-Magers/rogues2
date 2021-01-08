function game:game/start2

effect give @e[name=point,tag=map5] minecraft:glowing 3
effect give @e[tag=point1,tag=map5] minecraft:glowing 14

execute as @e[name=point,type=minecraft:armor_stand,tag=map5] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:pink_glazed_terracotta}]}
scoreboard players set @e[tag=point1,tag=map5] pointsT 520
scoreboard players set @e[tag=point2,tag=map5] pointsT 160
scoreboard players set @e[tag=point3,tag=map5] pointsT -200

fill -999 39 -987 -999 40 -987 minecraft:spruce_fence_gate[open=true,facing=east]
clone -1048 10 -1022 -1035 11 -1020 -1048 52 -1022
clone -1070 10 -993 -1073 14 -991 -1073 52 -993
clone -1053 10 -1013 -1068 13 -1016 -1068 64 -1016

fill -1042 58 -991 -1042 54 -989 minecraft:twisting_vines
fill -1025 42 -985 -1025 38 -987 minecraft:twisting_vines