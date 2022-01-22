execute as @s at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["track"],Duration:999999}

tag @s add metrack

execute as @e[tag=track] at @s run tp @p[tag=searcher]

execute as @e[tag=track] at @s run tp @s ~ ~ ~ facing entity @e[tag=metrack,limit=1]
execute as @e[tag=track] at @s run tp @s ~ ~.5 ~ ~ 0

execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^1.6 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^1.4 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^1.2 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^1 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^.8 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^.6 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^.4 0 0 0 0 1 force @p
execute as @e[tag=track] at @s run particle minecraft:enchanted_hit ^ ^ ^.2 0 0 0 0 1 force @p

tag @s remove metrack

kill @e[tag=track]