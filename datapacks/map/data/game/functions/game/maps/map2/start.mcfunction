setblock -89 40 65 minecraft:polished_blackstone_button[face=wall,powered=false,facing=west]
setblock -88 40 64 minecraft:polished_blackstone_button[face=wall,powered=false,facing=north]

execute as @a at @s run function game:game/start2

execute as @a at @s run effect give @e[name=point,tag=map2] minecraft:glowing 3
execute as @a at @s run effect give @e[tag=point1,tag=map2] minecraft:glowing 14

execute as @a at @s run execute as @e[name=point,type=minecraft:armor_stand,tag=map2] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:pink_glazed_terracotta}]}
execute as @a at @s run scoreboard players set @e[tag=point1,tag=map2] pointsT 520
execute as @a at @s run scoreboard players set @e[tag=point2,tag=map2] pointsT 160
execute as @a at @s run scoreboard players set @e[tag=point3,tag=map2] pointsT -200

setblock 151 27 206 minecraft:end_rod
setblock 154 28 202 end_rod