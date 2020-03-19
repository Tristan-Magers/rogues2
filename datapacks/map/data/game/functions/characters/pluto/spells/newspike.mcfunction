execute as @s at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["spike"],Duration:999999}
execute as @s at @s run tp @e[tag=spike,sort=nearest,limit=1] @p
scoreboard players operation @e[tag=spike,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s at @s run tp @e[tag=spike,sort=nearest,limit=1] ~ ~1.7 ~
execute as @s at @s run execute as @e[tag=spike,sort=nearest,limit=1] at @s run function game:faceaway2

playsound minecraft:block.bamboo_sapling.place master @a ~ ~ ~ 1 2
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 2
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 .3