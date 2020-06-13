tp @s[scores={move=1..3000}] ^ ^ ^.02
execute as @s[scores={move=1..3000}] at @s run tag @s remove in
execute as @s[scores={move=1..3000}] at @s if block ~ ~ ~ air run tag @s add in
execute as @s[tag=!in,scores={move=1..3000}] at @s run function game:detailin
execute as @s[scores={move=1..3000}] at @s run tp @s[tag=!in] ~ ~ ~
scoreboard players set @s[scores={move=..3000},tag=!in] move 4000
execute as @s[scores={move=4000}] at @s run tp @s ^ ^ ^-0.02
#execute as @s[scores={move=4000}] at @s run particle minecraft:falling_dust minecraft:black_concrete ~ ~.05 ~ .12 .09 .12 1 2 force

#execute as @s[scores={move=4000},tag=boom] at @s run summon creeper ~ ~ ~ {Invulnerable:1,ignited:1,Fuse:10,ExplosionRadius:2,NoAI:1}
#execute as @s[scores={move=4000},tag=boom] at @s run team join noColide @e[type=minecraft:creeper]

scoreboard players add @s move 1
execute as @s[scores={move=1..3000}] at @s run function game:projectile/smoke
tp @s @s