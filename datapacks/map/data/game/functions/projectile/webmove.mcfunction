tp @s[scores={move=1..700}] ^ ^ ^.25

scoreboard players add @s[scores={move=1..700}] timer 1
execute as @s[scores={move=1..700}] at @s run tag @s remove in
execute as @s[scores={move=1..700}] at @s run function game:detailin
execute as @s[scores={move=1..700}] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={move=1..700}] at @s run execute if block ~ ~ ~ cobweb run tag @s remove in
execute as @s[scores={move=1..700}] at @s run tp @s[tag=!in] ^ ^ ^-.3
scoreboard players set @s[scores={move=..1000},tag=!in] move 1000