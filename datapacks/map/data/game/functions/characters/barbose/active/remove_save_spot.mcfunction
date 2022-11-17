scoreboard players operation @e[tag=project_save_spot] playerID -= @s playerID
kill @e[tag=project_save_spot,scores={playerID=0}]
scoreboard players operation @e[tag=project_save_spot] playerID += @s playerID