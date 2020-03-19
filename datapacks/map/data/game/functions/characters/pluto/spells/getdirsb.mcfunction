execute store result score @s x run data get entity @s Pos[0] -500
execute store result score @s y run data get entity @s Pos[1] -500
execute store result score @s z run data get entity @s Pos[2] -500
tp @s ^ ^ ^.1
execute store result score @s dx run data get entity @s Pos[0] -500
execute store result score @s dy run data get entity @s Pos[1] -500
execute store result score @s dz run data get entity @s Pos[2] -500
tp @s ^ ^ ^-.1
scoreboard players operation @s x -= @s dx
scoreboard players operation @s y -= @s dy
scoreboard players operation @s z -= @s dz
