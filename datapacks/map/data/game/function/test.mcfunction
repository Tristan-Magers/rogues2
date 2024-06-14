execute at @s run summon marker ~ ~ ~ {Tags:["water_remove","new"]}
execute at @s run tp @e[tag=water_remove,tag=new] @s
tp 1026.0 20.00 -978.0
tag @s add water_remove_target
tag @s remove fire_remove

scoreboard players set @s fire_time 0

#schedule function game:test2 2t append