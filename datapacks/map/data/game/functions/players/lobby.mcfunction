effect give @s minecraft:resistance 3 10 true
#effect clear @s minecraft:jump_boost
effect give @s minecraft:weakness 3 10 true
scoreboard players set @s invisoff 10

execute if entity @s[tag=!ingame] run function game:players/lobbynomove

scoreboard players set @s healthshow 100