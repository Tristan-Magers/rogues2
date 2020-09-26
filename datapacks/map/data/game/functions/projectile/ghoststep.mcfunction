scoreboard players operation @s 2 = @s dx

scoreboard players operation @s x -= @s dx
scoreboard players operation @s y -= @s dy
scoreboard players operation @s z -= @s dz

execute as @s at @s run execute store result entity @s Pos[0] double .0001 run scoreboard players get @s x
execute as @s at @s run execute store result entity @s Pos[1] double .0001 run scoreboard players get @s y
execute as @s at @s run execute store result entity @s Pos[2] double .0001 run scoreboard players get @s z

execute as @s[tag=!ehit] at @s positioned ~ ~-50 ~ run function game:projectile/ghostcheck
#execute as @s at @s run particle minecraft:dripping_lava ~ ~-50 ~ 0 0 0 0 1 force