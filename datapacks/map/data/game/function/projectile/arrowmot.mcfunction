execute as @s store result score @s arrowxmot run data get entity @s Motion[0] 200
execute as @s store result score @s arrowymot run data get entity @s Motion[1] 200
execute as @s store result score @s arrowzmot run data get entity @s Motion[2] 200

scoreboard players operation @s arrowxmot *= @s arrowxmot
scoreboard players operation @s arrowymot *= @s arrowymot
scoreboard players operation @s arrowzmot *= @s arrowzmot

scoreboard players set @s arrowmot 0

scoreboard players operation @s arrowmot += @s arrowxmot
scoreboard players operation @s arrowmot += @s arrowymot
scoreboard players operation @s arrowmot += @s arrowzmot