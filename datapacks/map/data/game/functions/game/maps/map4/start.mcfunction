execute as @a at @s run function game:game/start2

execute as @a at @s run effect give @e[name=point,tag=map4] minecraft:glowing 3
execute as @a at @s run effect give @e[tag=point1,tag=map4] minecraft:glowing 14

execute as @a at @s run execute as @e[name=point,type=minecraft:armor_stand,tag=map4] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:pink_glazed_terracotta}]}
execute as @a at @s run scoreboard players set @e[tag=point1,tag=map4] pointsT 520
execute as @a at @s run scoreboard players set @e[tag=point2,tag=map4] pointsT 160
execute as @a at @s run scoreboard players set @e[tag=point3,tag=map4] pointsT -200

fill 159 47 -96 167 47 -59 minecraft:iron_bars[north=true,south=true] replace minecraft:iron_bars
fill 141 47 -61 145 47 -67 minecraft:iron_bars[north=true,south=true] replace minecraft:iron_bars
fill 140 51 -81 153 47 -74 minecraft:iron_bars[north=true,south=true] replace minecraft:iron_bars
fill 171 47 -84 168 47 -84 minecraft:iron_bars[east=true,west=true] replace minecraft:iron_bars
fill 158 47 -73 146 47 -64 minecraft:iron_bars[east=true,west=true] replace minecraft:iron_bars
fill 166 47 -58 160 47 -58 minecraft:iron_bars[east=true,west=true] replace minecraft:iron_bars

setblock 141 47 -69 minecraft:iron_bars[south=true,west=true] replace
setblock 145 47 -69 minecraft:iron_bars[east=true,south=true] replace
setblock 158 47 -97 minecraft:iron_bars[west=true,east=true] replace

fill 174 38 -99 134 32 -63 minecraft:cyan_concrete_powder replace minecraft:cyan_concrete
fill 170 41 -45 142 50 -97 minecraft:green_concrete_powder replace minecraft:green_concrete
fill 165 38 -40 126 38 -99 minecraft:yellow_concrete_powder replace minecraft:yellow_concrete
fill 153 38 -44 147 38 -56 minecraft:red_concrete_powder replace minecraft:red_concrete
fill 161 38 -48 161 38 -44 minecraft:orange_concrete_powder replace minecraft:orange_concrete
fill 125 39 -79 128 39 -74 minecraft:cyan_concrete_powder replace minecraft:cyan_concrete
fill 151 42 -81 144 42 -76 minecraft:cyan_concrete_powder replace minecraft:cyan_concrete

clone 173 10 -88 174 13 -85 173 33 -88 replace
clone 191 10 -63 198 12 -55 191 41 -63 replace
clone 150 10 -38 146 10 -39 146 45 -39 replace
clone 146 10 -84 154 12 -86 146 47 -86 replace
setblock 154 49 -85 minecraft:grass

clone 148 4 -84 147 7 -88 147 33 -88 replace
clone 164 10 -88 170 10 -84 164 36 -88 replace
clone 149 10 -71 153 12 -72 149 46 -72 replace
clone 143 10 -65 143 11 -65 143 45 -65 replace
clone 150 10 -92 143 10 -92 143 56 -92 replace
clone 144 10 -76 142 10 -78 142 48 -78 replace

clone 148 13 -84 147 10 -88 147 4 -88

fill 134 38 -72 134 39 -72 minecraft:sugar_cane

fill 156 43 -93 156 43 -91 minecraft:spruce_trapdoor[facing=west,open=false,half=top]

clone 146 3 -109 145 0 -105 147 33 -88