scoreboard players add @s gertimer 1

#execute as @s[scores={gertimer=5}] at @s run tp @s ~ ~1 ~

execute as @s[tag=startsb,scores={gertimer=1}] at @s run function game:characters/barbose/spells/sbstart

execute as @s[scores={gertimer=30}] at @s run scoreboard players operation @a playerID -= @s playerID
execute as @s[scores={gertimer=30}] at @s run effect give @p[scores={playerID=0}] minecraft:resistance 1 1
execute as @s[scores={gertimer=30}] at @s run tag @p[scores={playerID=0},distance=..4] add nores
execute as @s[scores={gertimer=30}] at @s run scoreboard players operation @a playerID += @s playerID

execute as @s[scores={gertimer=30}] at @s run summon creeper ~ ~.8 ~ {ingited:1,Fuse:0,ExplosionRadius:2}
execute as @s[scores={gertimer=30}] at @s run particle minecraft:explosion_emitter
execute as @s[scores={gertimer=30}] at @s run scoreboard players set @e[distance=..4,name=web] move 1045

tp @s[scores={gertimer=34..}] ~ ~-1000 ~
execute if entity @s[scores={gertimer=34..}] run kill @e[tag=head,limit=1,sort=nearest]
kill @s[scores={gertimer=34..}]

execute store result score @s keepxt run data get entity @s Motion[0] 10000
execute store result score @s keepzt run data get entity @s Motion[2] 10000

particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 0 force