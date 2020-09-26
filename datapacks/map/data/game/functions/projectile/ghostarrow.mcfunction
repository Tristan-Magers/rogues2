scoreboard players set @s 2 8

execute store result score @s motx run data get entity @s Pos[0] 10000
execute store result score @s moty run data get entity @s Pos[1] 10000
execute store result score @s motz run data get entity @s Pos[2] 10000

execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s y run data get entity @s Pos[1] 10000
execute store result score @s z run data get entity @s Pos[2] 10000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

scoreboard players operation @s dx /= @s 2
scoreboard players operation @s dy /= @s 2
scoreboard players operation @s dz /= @s 2

execute as @s[tag=!ehit] at @s run function game:projectile/ghoststep
execute as @s[tag=!ehit] at @s run function game:projectile/ghoststep
execute as @s[tag=!ehit] at @s run function game:projectile/ghoststep
execute as @s[tag=!ehit] at @s run particle minecraft:dripping_lava ~ ~-50 ~ 0 0 0 0 1 force
execute as @s[tag=!ehit] at @s run function game:projectile/ghoststep
execute as @s[tag=!ehit] at @s run function game:projectile/ghoststep
execute as @s[tag=!ehit] at @s run function game:projectile/ghoststep

execute as @s at @s run execute store result entity @s Pos[0] double .0001 run scoreboard players get @s motx
execute as @s at @s run execute store result entity @s Pos[1] double .0001 run scoreboard players get @s moty
execute as @s at @s run execute store result entity @s Pos[2] double .0001 run scoreboard players get @s motz

execute store result score @s dx run data get entity @s Pos[0] 10000
execute store result score @s dy run data get entity @s Pos[1] 10000
execute store result score @s dz run data get entity @s Pos[2] 10000

execute as @s[tag=!ehit] at @s positioned ~ ~-50 ~ run function game:projectile/ghostcheck

execute as @s at @s run particle minecraft:cloud ~ ~-50 ~ 0 0 0 0 1 force