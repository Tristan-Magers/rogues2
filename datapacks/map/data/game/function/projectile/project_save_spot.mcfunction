#
scoreboard players add @s timer 1

execute as @s[scores={timer=100..}] at @s run scoreboard players operation @a playerID -= @s playerID
execute as @s[scores={timer=100..}] at @s run tp @a[scores={playerID=0}] @s
execute as @s[scores={timer=100..}] at @s run scoreboard players operation @a playerID += @s playerID

kill @s[scores={timer=100..}]