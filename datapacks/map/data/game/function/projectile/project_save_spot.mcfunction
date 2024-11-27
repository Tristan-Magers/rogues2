#
scoreboard players add @s timer 1

execute as @s[scores={timer=100..}] at @s run scoreboard players operation @a playerID -= @s playerID
execute as @s[scores={timer=100..}] at @s run tp @a[scores={playerID=0}] @s

scoreboard players set @a[scores={playerID=0}] fire_time_effect 0
scoreboard players set @a[scores={playerID=0}] poison 0
scoreboard players set @a[scores={playerID=0}] poison2 0

scoreboard players set @a[scores={playerID=0}] nocap 0
scoreboard players set @a[scores={playerID=0}] notele 0

execute as @s[scores={timer=100..}] at @s run scoreboard players operation @a playerID += @s playerID

kill @s[scores={timer=100..}]