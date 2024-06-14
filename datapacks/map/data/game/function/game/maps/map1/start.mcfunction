function game:game/start2

effect give @e[name=point,tag=map1] minecraft:glowing 3
effect give @e[tag=point1,tag=map1] minecraft:glowing 14

execute as @e[name=point,type=minecraft:armor_stand,tag=map1] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:pink_glazed_terracotta}]}
scoreboard players set @e[tag=point1,tag=map1] pointsT 520
scoreboard players set @e[tag=point2,tag=map1] pointsT 160
scoreboard players set @e[tag=point3,tag=map1] pointsT -200

fill 21 24 222 21 24 226 minecraft:dark_oak_trapdoor[open=true,facing=west,half=top]
fill 22 24 229 22 24 233 minecraft:dark_oak_trapdoor[open=true,facing=west,half=top]
setblock 19 16 211 minecraft:redstone_wall_torch[facing=south]

clone 11 4 231 9 3 229 9 13 229
clone 3 3 227 5 4 225 3 16 225
clone -3 3 232 -1 4 230 -3 13 230