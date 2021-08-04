execute as @s[scores={move=45}] at @s run particle minecraft:falling_dust minecraft:snow ~ ~.5 ~ .65 .65 .65 2 30 force

execute as @s[scores={move=45}] at @s run playsound minecraft:entity.wither.spawn master @a[gamemode=adventure,distance=..2.5] ~ ~ ~ .8 .7
execute as @s[scores={move=45}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 .5
execute as @s[scores={move=45}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 .3
execute as @s[scores={move=45}] at @s run playsound minecraft:block.glass.break master @a[gamemode=adventure,distance=..2.5] ~ ~ ~ 1 .4
execute as @s[scores={move=45}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.6
execute as @s[scores={move=48}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 .7

execute as @s[scores={move=48}] at @s run particle minecraft:explosion_emitter ~ ~ ~
scoreboard players set @a[gamemode=adventure,distance=..2.5] poison 39
#execute as @s[scores={move=48}] at @s run effect give @a[gamemode=adventure,distance=..2.5] minecraft:poison 2 3
execute as @s[scores={move=48}] at @s run effect give @a[gamemode=adventure,distance=..2.5] minecraft:blindness 3 2
execute as @s[scores={move=48}] at @s run effect give @a[gamemode=adventure,distance=..2.5] minecraft:slowness 3 2

scoreboard players set @a[scores={dummylook=7}] invisoff 20