scoreboard players add @s wave 1
execute as @s[scores={wave=1}] at @s run function game:projectile/getdir2

scoreboard players operation @a playerID -= @s playerID

execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run execute as @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] at @s run tp @s @s
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run effect give @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] glowing 1
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] glowing 18
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] nolev 8
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run effect give @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] minecraft:levitation 1 2
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] x = @s x
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] y = @s y
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] z = @s z
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run execute as @a[gamemode=adventure,distance=..1.2,scores={playerID=1..}] at @s run function game:wallmove

execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run execute as @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] at @s run tp @s @s
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run effect give @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] glowing 1
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] glowing 18
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] nolev 8
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run effect give @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] minecraft:levitation 1 2
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] x = @s x
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] y = @s y
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run scoreboard players operation @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] z = @s z
execute as @s[scores={wave=4..}] at @s positioned ~ ~-1 ~ run execute as @a[gamemode=adventure,distance=..1.2,scores={playerID=..-1}] at @s run function game:wallmove

scoreboard players operation @a playerID += @s playerID

tp @s ^ ^ ^.8
kill @s[scores={wave=18..}]
execute as @s[scores={wave=4..}] at @s run particle minecraft:falling_dust{block_state:"minecraft:blue_wool"} ~ ~ ~ .35 .35 .35 0 2 force
execute as @s[scores={wave=4..}] at @s run particle minecraft:falling_obsidian_tear ~ ~ ~ 0 0 0 0 1 force
