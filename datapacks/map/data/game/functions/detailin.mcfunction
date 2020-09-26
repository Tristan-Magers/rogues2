execute if block ~ ~ ~ dark_oak_trapdoor run tag @s add in
execute if block ~ ~ ~ pink_stained_glass_pane run tag @s add in
execute if block ~ ~ ~ light_gray_stained_glass_pane run tag @s add in

execute if block ~ ~ ~ grass run tag @s add in
execute if block ~ ~ ~ tall_grass run tag @s add in
execute if block ~ ~ ~ #minecraft:small_flowers run tag @s add in
execute if block ~ ~ ~ fern run tag @s add in

execute if block ~ ~ ~ ladder run tag @s add in
execute if block ~ ~ ~ air run tag @s add in

execute if block ~ ~ ~ redstone_torch run tag @s add in
execute if block ~ ~ ~ #minecraft:trapdoors run tag @s add in
execute if block ~ ~ ~ fire run tag @s add in
execute if block ~ ~ ~ oak_sign run tag @s add in
execute if block ~ ~ ~ oak_wall_sign run tag @s add in
execute if block ~ ~ ~ cobweb run tag @s add in
execute if block ~ ~ ~ water run tag @s add in

execute if block ~ ~ ~ structure_void run tag @s add in

execute if block ~ ~.5 ~ #minecraft:slabs[type=top] run tag @s add in
execute if block ~ ~-.5 ~ #minecraft:slabs[type=bottom] run tag @s add in

execute if block ~ ~ ~ #minecraft:fences run tag @s add in
execute if block ~ ~ ~ end_rod run tag @s add in
execute as @s[type=!player] at @s if block ~ ~ ~ iron_bars run tag @s add in

execute if block ~.25 ~ ~.25 #minecraft:fences if block ~-.25 ~ ~-.25 #minecraft:fences run tag @s remove in
execute if block ~.25 ~ ~.25 end_rod if block ~-.25 ~ ~-.25 end_rod run tag @s remove in

execute if block ~ ~ ~ cobblestone_wall run tag @s add in
execute if block ~.25 ~ ~.25 cobblestone_wall if block ~-.25 ~ ~-.25 cobblestone_wall run tag @s remove in

execute if block ~ ~ ~ soul_sand if block ~ ~.125 ~ air run tag @s add in

execute if block ~ ~ ~ barrier run tag @s add in
execute as @s[type=player] at @s if block ~ ~ ~ barrier run tag @s remove in

execute if block ~ ~ ~ #minecraft:leaves run tag @s add in
execute as @s[type=!player] at @s if block ~ ~ ~ cobweb run tag @s remove in
execute as @s[type=player] at @s if block ~ ~ ~ #minecraft:leaves run tag @s remove in
execute as @s[tag=soulsend] at @s if block ~ ~ ~ #minecraft:leaves run tag @s remove in
