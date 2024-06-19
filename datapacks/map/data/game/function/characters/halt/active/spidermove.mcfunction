tag @s remove wall

execute as @s at @s positioned ^.35 ^ ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^-.35 ^ ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^.35 ^.5 ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^-.35 ^.5 ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^ ^ ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^ ^.5 ^.7 run function game:detection/detailin2

tag @s[tag=!in] add wall

execute as @s[tag=!wall] at @s run tp @s ^ ^ ^.22

execute as @s[tag=wall] at @s positioned ^.3 ^.8 ^.3 run function game:detection/detailin2
execute as @s[tag=wall,tag=in] at @s positioned ^-.3 ^.8 ^.3 run function game:detection/detailin2
execute as @s[tag=wall,tag=in] at @s positioned ^.3 ^.8 ^-.3 run function game:detection/detailin2
execute as @s[tag=wall,tag=in] at @s positioned ^-.3 ^.8 ^-.3 run function game:detection/detailin2

execute as @s[tag=wall,tag=in] at @s run tp @s ~ ~.1 ~

execute as @s[tag=!wall] at @s positioned ^.3 ^-.1 ^.3 run function game:detection/detailin2
execute as @s[tag=!wall,tag=in] at @s positioned ^-.3 ^-.1 ^.3 run function game:detection/detailin2
execute as @s[tag=!wall,tag=in] at @s positioned ^.3 ^-.1 ^-.3 run function game:detection/detailin2
execute as @s[tag=!wall,tag=in] at @s positioned ^-.3 ^-.1 ^-.3 run function game:detection/detailin2

execute as @s[tag=!wall,tag=in] at @s run tp @s ~ ~-.1 ~

tag @s add tag
scoreboard players operation @a[gamemode=adventure] playerID -= @s playerID

execute as @s[scores={spiderT=15..}] run tag @e[type=zombie] add other
execute as @s[scores={spiderT=15..}] run tag @e[type=villager] add other
execute as @s[scores={spiderT=15..}] run tag @a[gamemode=adventure] add other
tag @a[scores={playerID=0}] remove other

execute as @s at @s positioned ^6 ^ ^6 run execute as @e[tag=other,distance=..5.7] run execute as @e[tag=tag] at @s run tp @s ~ ~ ~ ~-5 0
execute as @s at @s positioned ^-6 ^ ^6 run execute as @e[tag=other,distance=..5.7] run execute as @e[tag=tag] at @s run tp @s ~ ~ ~ ~5 0

tag @s remove tag

scoreboard players set @e[tag=other,distance=..1.3] glowing 50
effect give @e[tag=other,distance=..1.3] slowness 3 0
scoreboard players set @e[tag=other,distance=..1.3] poison2 76
execute if entity @e[tag=other,distance=..1.3] run kill @s
#effect give @a[distance=..1.3] wither 1 2

scoreboard players operation @a[gamemode=adventure] playerID += @s playerID