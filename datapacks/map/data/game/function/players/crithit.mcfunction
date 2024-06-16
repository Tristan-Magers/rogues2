scoreboard players operation @s critDamage = @s damageDealt
scoreboard players operation @s critDamage -= @s damageCap
scoreboard players operation @s critDamage /= @s 10

playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0
playsound minecraft:item.shield.break master @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 2
playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 2

scoreboard players operation @a[distance=0.01..10] damageTaken -= @s damageDealt

effect give @p[distance=0.01..10,scores={damageTaken=0}] slowness 2 1 true
effect give @p[distance=0.01..10,scores={damageTaken=0}] blindness 2 1 true
execute as @p[distance=0.01..10,scores={damageTaken=0}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.3 20 force

execute if entity @p[distance=0.01..10,scores={damageTaken=0}] run tellraw @s [{"text":"CRITICAL","color":"red"},{"text":" HIT!","color":"gray"}]

execute as @e[distance=0.01..10,tag=arena_dummy,nbt={HurtTime:10s}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.3 20 force
execute if entity @e[distance=0.01..10,tag=arena_dummy,nbt={HurtTime:10s}] run tellraw @s [{"text":"CRITICAL","color":"red"},{"text":" HIT!","color":"gray"}]

scoreboard players operation @p[distance=0.01..10,scores={damageTaken=0}] damageob += @s critDamage
scoreboard players operation @e[distance=0.01..10,tag=arena_dummy,nbt={HurtTime:10s}] t3 -= @s critDamage

scoreboard players operation @a[distance=0.01..10] damageTaken += @s damageDealt

#say @e[distance=0.01..10,tag=arena_dummy,nbt={HurtTime:10s}] 10
