scoreboard players add @s press 1
execute as @s[scores={press=2}] at @s run tp @s @p
execute as @s[scores={press=2}] at @s run tp @s ~ ~ ~ ~ 0
execute as @s[scores={press=2..},nbt={Small:0b}] at @s run tp @s ^ ^ ^.35
execute as @s[scores={press=240..}] at @s run kill @s
execute as @s[scores={press=12..190},nbt={Small:0b}] at @s run particle flame ~ ~ ~ .6 .8 .6 0.05 1 force
execute as @s[scores={press=20..},nbt={Small:1b}] at @s run tp @s ^ ^ ^.35
execute as @s[scores={press=12..,flameT=0},nbt={Small:1b}] at @s positioned ~-.5 ~ ~-.5 run fill ~1 ~2 ~1 ~ ~-2 ~ minecraft:air replace fire
execute as @s[scores={press=12..,flameT=0},nbt={Small:1b}] at @s positioned ~-.5 ~ ~-.5 run fill ~1 ~2 ~1 ~ ~-2 ~ minecraft:air replace soul_fire
execute as @s[scores={press=12..190},nbt={Small:0b}] at @s positioned ~-.5 ~ ~-.5 run fill ~1 ~3 ~1 ~ ~-2 ~ minecraft:fire replace water
#execute as @s[scores={press=12..190},nbt={Small:0b}] at @s positioned ~-.75 ~ ~-.75 run fill ~1.5 ~2 ~1.5 ~ ~-2 ~ minecraft:air replace water
execute as @s[scores={press=12..190,flameT=0},nbt={Small:0b}] at @s positioned ~-.5 ~ ~-.5 run fill ~1 ~2 ~1 ~ ~-2 ~ minecraft:fire replace air
execute as @s[scores={press=12..190,flameT=0},nbt={Small:0b},x=135,y=11,z=93,distance=..15] at @s positioned ~-.5 ~ ~-.5 run fill 128 10 98 138 8 88 water replace water
execute as @s[scores={press=10..}] at @s run scoreboard players add @s flameT 1
execute as @s[scores={flameT=3..}] at @s run scoreboard players set @s flameT 0