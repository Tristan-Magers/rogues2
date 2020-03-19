function game:inblock
execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run effect give @e[tag=portalset,distance=..3,dx=0,dz=0,dy=1] instant_damage 1 1 true
execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run effect give @e[type=player,distance=..3,dx=0,dz=0,dy=1] instant_damage 1 1 true
execute as @s[tag=!in] at @s positioned ~ ~ ~ run effect give @e[type=cave_spider,distance=..1] instant_damage 1 1 true
execute as @s[tag=!in] at @s run particle minecraft:end_rod ~ ~.4 ~ .1 .1 .1 .25 14 force
execute as @s[tag=!in] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ .5 2 .2
execute as @s[tag=!in] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ .3 2 .1
kill @s[tag=!in]
particle minecraft:end_rod ~ ~ ~ .01 .01 .01 .007 1 force
execute as @s[scores={shotT=6..}] at @s run particle minecraft:crit ~ ~ ~ .1 .1 .1 .3 1

scoreboard players add @s shotT 1

tp @s ^ ^ ^.2