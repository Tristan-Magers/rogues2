scoreboard players operation @e[tag=totem] playerID -= @s playerID
kill @e[tag=totem,scores={playerID=0}]
scoreboard players operation @e[tag=totem] playerID += @s playerID