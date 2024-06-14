effect give @s[tag=!arena] minecraft:resistance 1 10 true
#effect clear @s minecraft:jump_boost
effect give @s[tag=!arena] minecraft:weakness 3 10 true
scoreboard players set @s[tag=!arena] invisoff 10
scoreboard players set @s[scores={noname=1..},tag=!arena] noname 0

tag @s remove spiritworld
tag @s remove spirlob
tag @s remove arena

execute if entity @s[tag=ingame] run function game:players/lobbytop
execute if entity @s[tag=!ingame] run function game:players/lobbynomove

scoreboard players set @s points 0
scoreboard players set @s venge -100

scoreboard players set @s[tag=!arena] healthshow 100

tag @s add vengeuse