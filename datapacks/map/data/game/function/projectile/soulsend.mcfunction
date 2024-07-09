tp @s ^ ^ ^.19

scoreboard players add @s stepcount 1

execute as @s at @s positioned ~.2 ~ ~.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~.2 ~ ~-.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~-.2 ~ ~.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~-.2 ~ ~-.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~.2 ~.5 ~.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~.2 ~.5 ~-.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~-.2 ~.5 ~.2 run function game:inblock
execute as @s[tag=in] at @s positioned ~-.2 ~.5 ~-.2 run function game:inblock

data merge entity @s[tag=bar] {Invulnerable:1}

execute as @s at @s run particle minecraft:firework ^ ^.2 ^-1 .2 .2 .2 0 1 force
execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.2
execute as @s[tag=!in] at @s run tag @s add kill

execute as @s[tag=!in,tag=!bar] at @s run function game:projectile/soulbacktrack 

execute as @s[tag=kill,tag=!bar] at @s run scoreboard players operation @a playerID -= @s playerID
execute as @s[tag=kill,tag=!bar] at @s run scoreboard players set @p[tag=!spiritworld,scores={playerID=0,respawn=..0},distance=0.1..100] soul_send_count_t -1
execute as @s[tag=kill,tag=!bar] at @s run tp @p[tag=!spiritworld,scores={playerID=0,respawn=..0},distance=0.1..100] @s[scores={stepcount=4..}]
execute as @s[tag=kill,tag=!bar] at @s run scoreboard players operation @a playerID += @s playerID

tag @s[scores={stepcount=600..}] add kill

tp @s[tag=kill] ~ ~-1000 ~
kill @s[tag=kill]