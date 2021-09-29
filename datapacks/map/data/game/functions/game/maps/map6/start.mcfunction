function game:game/start2

effect give @e[name=point,tag=map6] minecraft:glowing 3
effect give @e[tag=point1,tag=map6] minecraft:glowing 14

execute as @e[name=point,type=minecraft:armor_stand,tag=map6] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:pink_glazed_terracotta}]}
scoreboard players set @e[tag=point2,tag=map6] pointsT 520
scoreboard players set @e[tag=point1,tag=map6] pointsT 160
scoreboard players set @e[tag=point3,tag=map6] pointsT -200