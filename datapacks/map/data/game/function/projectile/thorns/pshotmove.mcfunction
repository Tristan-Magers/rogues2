execute as @s[tag=!hit] at @s run function game:projectile/thorns/pshot
execute as @s[tag=!hit] at @s run function game:projectile/thorns/pshot
execute as @s[tag=!hit] at @s run function game:projectile/thorns/pshot
execute as @s[tag=!hit] at @s run function game:projectile/thorns/pshot
execute as @s[tag=!hit] at @s run function game:projectile/thorns/pshot

scoreboard players add @s timer 1
scoreboard players set @s[tag=hit,scores={timer=..1000}] timer 1000

execute as @s[scores={timer=1006}] at @s run summon area_effect_cloud ~ ~.3 ~ {Particle:{type:"crit"},ReapplicationDelay:0,RadiusPerTick:-.05f,Radius:3f,Duration:60,Potion:"minecraft:harming",Tags:["thorns"]}
execute as @s[scores={timer=1000}] at @s run particle minecraft:witch ~ ~.3 ~ .8 .8 .8 .2 100
execute as @s[scores={timer=1000}] at @s run particle minecraft:crit ~ ~.3 ~ .8 .8 .8 .2 100
execute as @s[scores={timer=1000}] at @s run playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 1 .8 .2
execute as @s[scores={timer=1000}] at @s run playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 1 2
execute as @s[scores={timer=1000}] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .5 1.1 .1
execute as @s[scores={timer=1000}] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .3 .4 .07
execute as @s[scores={timer=1000}] at @s run scoreboard players set @e[distance=..3,name=web] move 1045
kill @s[scores={timer=1006}]