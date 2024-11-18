execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove

execute as @s[scores={move=993}] at @s run playsound minecraft:block.cobweb.fall master @a ~ ~ ~ 1 0
execute as @s[scores={move=993}] at @s run particle minecraft:explosion ~ ~0.6 ~ 0.1 0.5 0.1 0.25 12 force
execute as @s[scores={move=993}] at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.25 12 force
execute as @s[scores={move=990..999}] at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.1 3 force

execute as @s[scores={move=1000}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~ ~ 0

execute as @s[scores={move=1000}] at @s run fill ^ ^-.4 ^0.49 ^ ^1.6 ^-0.0 cobweb replace air
execute as @s[scores={move=1000}] at @s run fill ^1 ^-.4 ^0.49 ^1 ^1.6 ^-0.0 cobweb replace air
execute as @s[scores={move=1000}] at @s run fill ^-1 ^-.4 ^0.49 ^-1 ^1.6 ^-0.0 cobweb replace air
execute as @s[x=-100,y=40,z=50,distance=..100,scores={move=1000}] at @s run scoreboard players set @s move 1030
execute as @s[scores={move=1045}] at @s run fill ^ ^-.4 ^0.49 ^ ^1.6 ^-0.0 air replace cobweb
execute as @s[scores={move=1045}] at @s run fill ^1 ^-.4 ^0.49 ^1 ^1.6 ^-0.0 air replace cobweb
execute as @s[scores={move=1045}] at @s run fill ^-1 ^-.4 ^0.49 ^-1 ^1.6 ^-0.0 air replace cobweb
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^ ^-.4 ^0.49 ^ ^1.6 ^-0.0 cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^1 ^-.4 ^0.49 ^1 ^1.6 ^-0.0 cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^-1 ^-.4 ^0.49 ^-1 ^1.6 ^-0.0 cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=webnoblock] at @s run fill ~ ~ ~ ~ ~ ~ air replace cobweb
execute as @s[scores={move=1045}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0 15 force
execute as @s[scores={move=1045}] at @s run playsound minecraft:block.cobweb.break master @a ~ ~ ~ 1 2
scoreboard players add @s move 1

#safe way to reduce life from 2.25s -> 1.3s
scoreboard players add @s[scores={move=1002}] move 18

kill @s[scores={move=500}]
kill @s[scores={move=1046..}]
#execute as @s[scores={move=1..700}] at @s run function game:projectile/web
tp @s @s