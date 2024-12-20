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

tag @s remove left
tag @s remove right

execute as @s at @s positioned ^6 ^ ^6 if entity @e[tag=other,distance=..5.99] run tag @s add left
execute as @s at @s positioned ^-6 ^ ^6 if entity @e[tag=other,distance=..5.99] run tag @s add right

execute as @s at @s positioned ^3 ^ ^3 if entity @e[tag=other,distance=..2.99] run tag @s add left
execute as @s at @s positioned ^-3 ^ ^3 if entity @e[tag=other,distance=..2.99] run tag @s add right

execute as @s[tag=tag,tag=left] at @s run tp @s ~ ~ ~ ~-2.5 0
execute as @s[tag=tag,tag=right] at @s run tp @s ~ ~ ~ ~2.5 0

tag @s remove tag

scoreboard players set @e[tag=other,distance=..1.3] glowing 50
effect give @e[tag=other,distance=..1.3] slowness 2 0
scoreboard players set @e[tag=other,distance=..1.3] poison2 50
execute if entity @e[tag=other,distance=..1.3] run kill @s
#effect give @a[distance=..1.3] wither 1 2

scoreboard players operation @a[gamemode=adventure] playerID += @s playerID

tag @e remove me
tag @s add me

execute as @s[nbt={HurtTime:10s}] on attacker unless score @s playerID = @e[tag=me,limit=1] playerID run tag @s add wrong_spider

tag @s remove me