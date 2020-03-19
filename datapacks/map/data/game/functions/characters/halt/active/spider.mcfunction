scoreboard players add @s spiderT 1
kill @s[scores={spiderT=180..}]

tag @s remove wall

execute as @s at @s positioned ^.35 ^ ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^-.35 ^ ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^.35 ^.5 ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^-.35 ^.5 ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^ ^ ^.7 run function game:detection/detailin2
execute as @s[tag=in] at @s positioned ^ ^.5 ^.7 run function game:detection/detailin2

tag @s[tag=!in] add wall

execute as @s[tag=!wall] at @s run tp @s ^ ^ ^.15

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
scoreboard players operation @a playerID -= @s playerID

tag @a add other
tag @a[scores={playerID=0}] remove other

execute as @s at @s positioned ^5 ^ ^5 run execute as @e[tag=other,distance=..4.7] run execute as @e[tag=tag] at @s run tp @s ~ ~ ~ ~-2 0
execute as @s at @s positioned ^-5 ^ ^5 run execute as @e[tag=other,distance=..4.7] run execute as @e[tag=tag] at @s run tp @s ~ ~ ~ ~2 0

tag @s remove tag

effect give @e[tag=other,distance=..1.5] wither 1 4
#effect give @a[distance=..1.5] wither 1 2

scoreboard players operation @a playerID += @s playerID