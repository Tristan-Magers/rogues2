tag @e remove gethit

tag @a remove isthrow

scoreboard players operation @a playerID -= @s playerID
tag @a[scores={playerID=0}] add isthrow
scoreboard players operation @a playerID += @s playerID

execute as @s at @s run function game:characters/pluto/spells/spikerec