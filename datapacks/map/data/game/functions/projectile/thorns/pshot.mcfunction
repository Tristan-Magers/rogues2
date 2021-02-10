function game:inblock
execute as @s[tag=!in,tag=!hit] at @s run summon area_effect_cloud ~ ~.3 ~ {Particle:"minecraft:crit",ReapplicationDelay:0,RadiusPerTick:-.05f,Radius:3f,Duration:60,Potion:"minecraft:harming",Tags:["thorns"]}
execute as @s[tag=!in,tag=!hit] at @s run particle minecraft:witch ~ ~.3 ~ .8 .8 .8 .2 100
execute as @s[tag=!in,tag=!hit] at @s run playsound minecraft:entity.arrow.hit master @a ~ ~ ~ .8 .8 .2
execute as @s[tag=!in,tag=!hit] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .5 1.1 .1
execute as @s[tag=!in,tag=!hit] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .3 .4 .07
execute as @s[tag=!in,tag=!hit] at @s run scoreboard players set @e[distance=..3,name=web] move 1045
tag @s[tag=!in] add hit
kill @s[tag=!in]
particle minecraft:crit ~ ~ ~ .08 .08 .08 .01 2 force

tp @s ^ ^ ^.2