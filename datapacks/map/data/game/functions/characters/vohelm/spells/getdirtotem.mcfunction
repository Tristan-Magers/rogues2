execute store result score @s x run data get entity @s Pos[0] -2000
execute store result score @s y run data get entity @s Pos[1] -2000
execute store result score @s z run data get entity @s Pos[2] -2000
tp @s ^ ^ ^.019
execute store result score @s dx run data get entity @s Pos[0] -2000
execute store result score @s dy run data get entity @s Pos[1] -2000
execute store result score @s dz run data get entity @s Pos[2] -2000
tp @s ^ ^ ^-.019
scoreboard players operation @s x -= @s dx
scoreboard players operation @s y -= @s dy
scoreboard players operation @s z -= @s dz
