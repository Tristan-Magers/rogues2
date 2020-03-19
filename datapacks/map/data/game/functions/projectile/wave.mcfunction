scoreboard players add @s wave 1
execute as @s[scores={wave=1}] at @s run function game:getdir

scoreboard players operation @a playerID -= @s playerID

execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run execute as @a[distance=..1.2,scores={playerID=1..}] at @s run tp @s @s
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..1.2,scores={playerID=1..}] glowing 1
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[distance=..1.2,scores={playerID=1..}] glowing 20
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..1.2,scores={playerID=1..}] minecraft:levitation 1 2
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[distance=..1.2,scores={playerID=1..}] x = @s x
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[distance=..1.2,scores={playerID=1..}] y = @s y
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[distance=..1.2,scores={playerID=1..}] z = @s z
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run execute as @a[distance=..1.2,scores={playerID=1..}] at @s run function game:wallmove

execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run execute as @a[distance=..1.2,scores={playerID=..-1}] at @s run tp @s @s
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..1.2,scores={playerID=..-1}] glowing 1
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[distance=..1.2,scores={playerID=..-1}] glowing 20
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..1.2,scores={playerID=..-1}] minecraft:levitation 1 2
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[distance=..1.2,scores={playerID=..-1}] x = @s x
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[distance=..1.2,scores={playerID=..-1}] y = @s y
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[distance=..1.2,scores={playerID=..-1}] z = @s z
execute as @s[scores={wave=3..}] at @s positioned ~ ~-1 ~ run execute as @a[distance=..1.2,scores={playerID=..-1}] at @s run function game:wallmove

scoreboard players operation @a playerID += @s playerID

tp @s ^ ^ ^.8
kill @s[scores={wave=18..}]
particle minecraft:falling_dust blue_wool ~ ~ ~ .35 .35 .35 0 2 force