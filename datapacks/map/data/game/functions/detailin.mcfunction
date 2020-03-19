execute if block ~ ~ ~ dark_oak_trapdoor run tag @s add in
execute if block ~ ~ ~ pink_stained_glass_pane run tag @s add in
execute if block ~ ~ ~ light_gray_stained_glass_pane run tag @s add in

execute if block ~ ~ ~ grass run tag @s add in
execute if block ~ ~ ~ tall_grass run tag @s add in
execute if block ~ ~ ~ poppy run tag @s add in
execute if block ~ ~ ~ red_tulip run tag @s add in
execute if block ~ ~ ~ fern run tag @s add in

execute if block ~ ~ ~ ladder run tag @s add in
execute if block ~ ~ ~ air run tag @s add in

execute if block ~ ~ ~ redstone_torch run tag @s add in
execute if block ~ ~ ~ iron_trapdoor run tag @s add in
execute if block ~ ~ ~ jungle_trapdoor run tag @s add in
execute if block ~ ~ ~ oak_trapdoor run tag @s add in
execute if block ~ ~ ~ spruce_trapdoor run tag @s add in
execute if block ~ ~ ~ fire run tag @s add in
execute if block ~ ~ ~ oak_sign run tag @s add in
execute if block ~ ~ ~ oak_wall_sign run tag @s add in
execute if block ~ ~ ~ cobweb run tag @s add in
execute if block ~ ~ ~ water run tag @s add in

execute if block ~ ~ ~ structure_void run tag @s add in

execute if block ~ ~.5 ~ polished_andesite_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ polished_andesite_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ nether_brick_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ nether_brick_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ stone_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ stone_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ cobblestone_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ cobblestone_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ jungle_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ jungle_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ birch_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ birch_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ acacia_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ acacia_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ spruce_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ spruce_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ dark_oak_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ dark_oak_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ oak_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ oak_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ dark_prismarine_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ dark_prismarine_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ quartz_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ quartz_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ stone_brick_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ stone_brick_slab[type=bottom] run tag @s add in

execute if block ~ ~ ~ jungle_fence run tag @s add in
execute if block ~ ~ ~ birch_fence run tag @s add in
execute if block ~ ~ ~ acacia_fence run tag @s add in
execute if block ~ ~ ~ end_rod run tag @s add in

execute if block ~.25 ~ ~.25 jungle_fence if block ~-.25 ~ ~-.25 jungle_fence run tag @s remove in
execute if block ~.25 ~ ~.25 birch_fence if block ~-.25 ~ ~-.25 birch_fence run tag @s remove in
execute if block ~.25 ~ ~.25 acacia_fence if block ~-.25 ~ ~-.25 acacia_fence run tag @s remove in
execute if block ~.25 ~ ~.25 end_rod if block ~-.25 ~ ~-.25 end_rod run tag @s remove in

execute if block ~ ~ ~ cobblestone_wall run tag @s add in
execute if block ~.25 ~ ~.25 cobblestone_wall if block ~-.25 ~ ~-.25 cobblestone_wall run tag @s remove in

execute if block ~ ~ ~ soul_sand if block ~ ~.125 ~ air run tag @s add in

execute if block ~ ~ ~ barrier run tag @s add in
execute as @s[type=player] at @s if block ~ ~ ~ barrier run tag @s remove in

execute if block ~ ~ ~ minecraft:spruce_leaves run tag @s add in
execute as @s[type=player] at @s if block ~ ~ ~ minecraft:spruce_leaves run tag @s remove in
execute as @s[tag=soulsend] at @s if block ~ ~ ~ minecraft:spruce_leaves run tag @s remove in
