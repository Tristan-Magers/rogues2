execute as @s[scores={move=55}] at @s if entity @p[distance=..8] run particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~.5 ~ .65 .65 .65 2 30 force

execute as @s[scores={move=55}] at @s if entity @p[distance=..8] run playsound minecraft:entity.wither.spawn master @a[gamemode=adventure,distance=..2.5] ~ ~ ~ .8 .7
execute as @s[scores={move=55}] at @s if entity @p[distance=..8] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 .5
execute as @s[scores={move=55}] at @s if entity @p[distance=..8] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 .3
execute as @s[scores={move=55}] at @s if entity @p[distance=..8] run playsound minecraft:block.glass.break master @a[gamemode=adventure,distance=..2.5] ~ ~ ~ 1 .4
execute as @s[scores={move=55}] at @s if entity @p[distance=..8] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.6
execute as @s[scores={move=58}] at @s if entity @p[distance=..8] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 .7

execute as @s[scores={move=58}] at @s if entity @p[distance=..8] run particle minecraft:explosion_emitter ~ ~ ~
scoreboard players set @a[gamemode=adventure,distance=..2.5] poison 39
#execute as @s[scores={move=58}] at @s run effect give @a[gamemode=adventure,distance=..2.5] minecraft:poison 2 3
execute as @s[scores={move=58}] at @s run effect give @a[gamemode=adventure,distance=..2.5] minecraft:blindness 3 2
execute as @s[scores={move=58}] at @s run effect give @a[gamemode=adventure,distance=..2.5] minecraft:slowness 3 2

execute as @s[scores={move=58}] at @s if entity @p[distance=..8] run scoreboard players set @a[scores={dummylook=-4}] invisoff 20