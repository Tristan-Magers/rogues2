scoreboard players add @s thornsT 1

execute as @s[scores={thornsT=51}] at @s run particle minecraft:flash ~ ~.2 ~ 0.1 0 0.1 0 5 force
execute as @s[scores={thornsT=51}] at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 2
execute as @s[scores={thornsT=51}] at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 2
execute as @s[scores={thornsT=51}] at @s run scoreboard players set @a[gamemode=adventure,distance=..3.1] glowing 12