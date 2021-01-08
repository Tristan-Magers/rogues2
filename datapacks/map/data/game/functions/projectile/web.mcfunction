execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove
execute as @s[scores={move=1..700}] at @s run function game:projectile/webmove

execute as @s[scores={move=1000}] at @s run fill ^ ^-.4 ^ ^ ^1.6 ^ cobweb replace air
execute as @s[scores={move=1000}] at @s run fill ^1 ^-.4 ^ ^1 ^1.6 ^ cobweb replace air
execute as @s[scores={move=1000}] at @s run fill ^-1 ^-.4 ^ ^-1 ^1.6 ^ cobweb replace air
execute as @s[x=-100,y=40,z=50,distance=..100,scores={move=1000}] at @s run scoreboard players set @s move 1043
execute as @s[scores={move=1045}] at @s run fill ^ ^-.4 ^ ^ ^1.6 ^ air replace cobweb
execute as @s[scores={move=1045}] at @s run fill ^1 ^-.4 ^ ^1 ^1.6 ^ air replace cobweb
execute as @s[scores={move=1045}] at @s run fill ^-1 ^-.4 ^ ^-1 ^1.6 ^ air replace cobweb
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^ ^-.4 ^ ^ ^1.6 ^ cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^1 ^-.4 ^ ^1 ^1.6 ^ cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=web,scores={move=1000..1044}] at @s run fill ^-1 ^-.4 ^ ^-1 ^1.6 ^ cobweb replace air
execute as @s[scores={move=1045}] at @s run execute as @e[name=webnoblock] at @s run fill ~ ~ ~ ~ ~ ~ air replace cobweb
execute as @s[scores={move=1045}] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0 15 force
scoreboard players add @s move 1
kill @s[scores={move=500}]
kill @s[scores={move=1046..}]
#execute as @s[scores={move=1..700}] at @s run function game:projectile/web
tp @s @s