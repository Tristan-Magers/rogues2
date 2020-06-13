tag @s[nbt={inGround:1b},x=-100,y=40,z=50,distance=..100] add nowat
execute if block ~ ~ ~ barrier run tag @s add nowat
execute if block ~ ~1 ~ barrier run tag @s add nowat
execute if block ~ ~-1 ~ barrier run tag @s add nowat
execute if block ~1 ~ ~ barrier run tag @s add nowat
execute if block ~-1 ~ ~ barrier run tag @s add nowat
execute if block ~ ~ ~1 barrier run tag @s add nowat
execute if block ~ ~ ~-1 barrier run tag @s add nowat

execute as @s[nbt={inGround:1b},tag=!nowat] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"watermark\"",Duration:600}
execute as @s[nbt={inGround:1b},tag=!nowat] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 water[level=9] replace air
execute as @s[nbt={inGround:1b}] at @s run kill @s