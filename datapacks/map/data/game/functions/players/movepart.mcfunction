scoreboard players add @s invis 0

execute as @s at @s if block ~ ~ ~ water run particle bubble ~ ~.2 ~ .2 .2 .2 0 3 force

scoreboard players set @s[scores={shift=1..}] run 0
execute as @s[scores={walk=1..}] at @s run particle minecraft:falling_dust minecraft:black_concrete ~ ~.1 ~ .12 .09 .12 1 2 force
scoreboard players set @s walk 0
execute as @s[scores={run=1..}] at @s run particle minecraft:block minecraft:obsidian ~ ~.2 ~ .3 .4 .3 1 6 force
effect give @s[scores={run=0},gamemode=adventure] minecraft:invisibility 5 0 true
scoreboard players set @s[scores={run=1..}] invisoff 5
scoreboard players set @s[scores={invisoff=1..,jump=1..}] invisoff 14
scoreboard players set @s run 0
effect clear @s[scores={invisoff=1..},gamemode=adventure] minecraft:invisibility
scoreboard players remove @s[scores={invisoff=-5..}] invisoff 1
scoreboard players set @s[scores={jump=1..,boostT=1..}] boostpart 45
execute as @s[scores={jump=1..,shift=0}] at @s run particle minecraft:falling_dust minecraft:white_stained_glass ~ ~.05 ~ .3 .05 .3 .5 20 force
execute as @s[scores={jump=1..,shift=1..}] at @s run particle minecraft:falling_dust minecraft:white_stained_glass ~ ~-.1 ~ .1 0 .1 .1 4 force
scoreboard players set @s shift 0
scoreboard players set @s jump 0

execute as @s at @s if block ~ ~ ~ minecraft:cobweb run particle minecraft:spit ~ ~1 ~ .1 .3 .1 0 1