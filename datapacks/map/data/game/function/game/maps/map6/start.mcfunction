function game:game/start2

effect give @e[name=point,tag=map6] minecraft:glowing 3
effect give @e[tag=point1,tag=map6] minecraft:glowing 14

execute as @e[name=point,type=minecraft:armor_stand,tag=map6] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:pink_glazed_terracotta}]}
scoreboard players set @e[tag=point2,tag=map6] pointsT 520
scoreboard players set @e[tag=point1,tag=map6] pointsT 160
scoreboard players set @e[tag=point3,tag=map6] pointsT -200

clone 1004 9 -999 987 10 -969 987 19 -999
clone 1025 9 -1017 1011 19 -994 1011 19 -1017

setblock 987 30 -969 minecraft:fern
setblock 989 31 -966 fern
setblock 1006 32 -966 fern
setblock 1007 31 -992 fern
setblock 992 31 -1003 fern
setblock 984 32 -1001 fern

setblock 996 19 -1001 fern
setblock 997 20 -1002 fern

setblock 987 16 -977 minecraft:large_fern
setblock 987 17 -977 minecraft:large_fern[half=upper]