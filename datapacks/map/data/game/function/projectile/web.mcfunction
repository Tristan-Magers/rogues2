execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove

execute as @s[scores={move=995}] at @s run particle minecraft:explosion ~ ~0.6 ~ 0.1 0.5 0.1 0.25 12 force
execute as @s[scores={move=995}] at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.25 12 force
execute as @s[scores={move=995..999}] at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.1 3 force

execute as @s[scores={move=1000}] at @s run fill ^ ^-.4 ^ ^ ^1.6 ^ cobweb replace air
execute as @s[scores={move=1000}] at @s run fill ^1 ^-.4 ^ ^1 ^1.6 ^ cobweb replace air
execute as @s[scores={move=1000}] at @s run fill ^-1 ^-.4 ^ ^-1 ^1.6 ^ cobweb replace air
execute as @s[x=-100,y=40,z=50,distance=..100,scores={move=1000}] at @s run scoreboard players set @s move 1029
execute as @s[scores={move=1045}] at @s run fill ^ ^-.4 ^ ^ ^1.6 ^ air replace cobweb
execute as @s[scores={move=1045}] at @s run fill ^1 ^-.4 ^ ^1 ^1.6 ^ air replace cobweb
execute as @s[scores={move=1045}] at @s run fill ^-1 ^-.4 ^ ^-1 ^1.6 ^ air replace cobweb
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^ ^-.4 ^ ^ ^1.6 ^ cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^1 ^-.4 ^ ^1 ^1.6 ^ cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^-1 ^-.4 ^ ^-1 ^1.6 ^ cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=webnoblock] at @s run fill ~ ~ ~ ~ ~ ~ air replace cobweb
execute as @s[scores={move=1045}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0 15 force
scoreboard players add @s move 1

#safe way to reduce life from 2.15s -> 1.55s
scoreboard players add @s[scores={move=1002}] move 12

kill @s[scores={move=500}]
kill @s[scores={move=1045..}]
#execute as @s[scores={move=1..700}] at @s run function game:projectile/web
tp @s @s