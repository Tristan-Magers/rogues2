execute as @a at @s run function game:game/start2

execute as @a at @s run effect give @e[name=point,tag=map4] minecraft:glowing 3
execute as @a at @s run effect give @e[tag=point1,tag=map4] minecraft:glowing 14

execute as @a at @s run execute as @e[name=point,type=minecraft:armor_stand,tag=map4] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:pink_glazed_terracotta}]}
execute as @a at @s run scoreboard players set @e[tag=point1,tag=map4] pointsT 520
execute as @a at @s run scoreboard players set @e[tag=point2,tag=map4] pointsT 160
execute as @a at @s run scoreboard players set @e[tag=point3,tag=map4] pointsT -200

fill 1159 47 -96 1167 47 -59 minecraft:iron_bars[north=true,south=true] replace minecraft:iron_bars
fill 1141 47 -61 1145 47 -67 minecraft:iron_bars[north=true,south=true] replace minecraft:iron_bars
fill 1140 51 -81 1153 47 -74 minecraft:iron_bars[north=true,south=true] replace minecraft:iron_bars
fill 1171 47 -84 1168 47 -84 minecraft:iron_bars[east=true,west=true] replace minecraft:iron_bars
fill 1158 47 -73 1146 47 -64 minecraft:iron_bars[east=true,west=true] replace minecraft:iron_bars
fill 1166 47 -58 1160 47 -58 minecraft:iron_bars[east=true,west=true] replace minecraft:iron_bars

setblock 1141 47 -69 minecraft:iron_bars[south=true,west=true] replace
setblock 1145 47 -69 minecraft:iron_bars[east=true,south=true] replace
setblock 1158 47 -97 minecraft:iron_bars[west=true,east=true] replace

fill 1174 38 -99 1134 32 -63 minecraft:cyan_concrete_powder replace minecraft:cyan_concrete
fill 1170 41 -45 1142 50 -97 minecraft:green_concrete_powder replace minecraft:green_concrete
fill 1165 38 -40 1126 38 -99 minecraft:yellow_concrete_powder replace minecraft:yellow_concrete
fill 1153 38 -44 1147 38 -56 minecraft:red_concrete_powder replace minecraft:red_concrete
fill 1161 38 -48 1161 38 -44 minecraft:orange_concrete_powder replace minecraft:orange_concrete
fill 1125 39 -79 1128 39 -74 minecraft:cyan_concrete_powder replace minecraft:cyan_concrete
fill 1151 42 -81 1144 42 -76 minecraft:cyan_concrete_powder replace minecraft:cyan_concrete

clone 1173 10 -88 1174 13 -85 1173 33 -88 replace
clone 1191 10 -63 1198 12 -55 1191 41 -63 replace
clone 1150 10 -38 1146 10 -39 1146 45 -39 replace
clone 1146 10 -84 1154 12 -86 1146 47 -86 replace
setblock 1154 49 -85 minecraft:short_grass

clone 1148 4 -84 1147 7 -88 1147 33 -88 replace
clone 1164 10 -88 1170 10 -84 1164 36 -88 replace
clone 1149 10 -71 1153 12 -72 1149 46 -72 replace
clone 1143 10 -65 1143 11 -65 1143 45 -65 replace
clone 1150 10 -92 1143 10 -92 1143 56 -92 replace
clone 1144 10 -76 1142 10 -78 1142 48 -78 replace

clone 1148 13 -84 1147 10 -88 1147 4 -88

fill 1134 38 -72 1134 39 -72 minecraft:sugar_cane

fill 1156 43 -93 1156 43 -91 minecraft:spruce_trapdoor[facing=west,open=false,half=top]

clone 1146 3 -109 1145 0 -105 1147 33 -88