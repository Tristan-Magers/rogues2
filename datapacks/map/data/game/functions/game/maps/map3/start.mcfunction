execute as @a at @s run function game:game/start2

execute as @a at @s run effect give @e[name=point,tag=map3] minecraft:glowing 3
execute as @a at @s run effect give @e[tag=point1,tag=map3] minecraft:glowing 14

execute as @a at @s run execute as @e[name=point,type=minecraft:armor_stand,tag=map3] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:pink_glazed_terracotta}]}
execute as @a at @s run scoreboard players set @e[tag=point1,tag=map3] pointsT 520
execute as @a at @s run scoreboard players set @e[tag=point2,tag=map3] pointsT 160
execute as @a at @s run scoreboard players set @e[tag=point3,tag=map3] pointsT -200

setblock 125 7 117 minecraft:end_rod
setblock 113 9 118 minecraft:end_rod
setblock 106 9 113 minecraft:end_rod
setblock 105 12 108 end_rod
setblock 108 13 105 end_rod
setblock 131 19 91 minecraft:end_rod
setblock 132 19 94 end_rod
setblock 135 19 91 end_rod
setblock 115 14 94 end_rod