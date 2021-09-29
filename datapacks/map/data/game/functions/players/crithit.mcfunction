scoreboard players operation @s critDamage = @s damageDealt
scoreboard players operation @s critDamage -= @s damageCap
scoreboard players operation @s critDamage /= @s 10

scoreboard players operation @a[distance=0.01..10] damageTaken -= @s damageDealt
effect give @a[distance=0.01..10,scores={damageTaken=0}] slowness 2 1 true
effect give @a[distance=0.01..10,scores={damageTaken=0}] blindness 2 1 true
execute as @a[distance=0.01..10,scores={damageTaken=0}] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.2 20 force
scoreboard players operation @a[distance=0.01..10,scores={damageTaken=0}] damageob += @s critDamage
scoreboard players operation @a[distance=0.01..10] damageTaken += @s damageDealt