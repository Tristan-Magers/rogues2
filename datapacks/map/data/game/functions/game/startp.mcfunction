tag @s add game

function game:players/reset

effect give @s minecraft:resistance 8 4 true
effect give @s minecraft:weakness 8 4 true
effect give @s minecraft:fire_resistance 8 0 true
effect give @s minecraft:blindness 2

scoreboard players set @s invisoff 80
scoreboard players set @s Invul 160
scoreboard players set @s healthshow 100
scoreboard players set @s Score 0

tellraw @s [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] 10 seconds of Invulnerablity"}]
tellraw @s [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] Stand on points to collect "},{"bold":"true","color":"aqua","text":"SOULS"},{"text":"."}]
