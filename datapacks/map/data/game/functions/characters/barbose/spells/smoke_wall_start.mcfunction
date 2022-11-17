summon marker ~ ~ ~ {Tags:["smoke_place","kill"]}

tp @e[tag=smoke_place] @p

execute as @e[tag=smoke_place] at @s run tp @s ~ ~ ~ ~ 0

execute as @e[tag=smoke_place] at @s positioned ^ ^ ^3.7 run summon minecraft:marker ^-3.0 ^ ^-0.6 {Tags:["smoke_wall"]}
execute as @e[tag=smoke_place] at @s positioned ^ ^ ^3.7 run summon minecraft:marker ^-1.8 ^ ^-0.2 {Tags:["smoke_wall"]}
execute as @e[tag=smoke_place] at @s positioned ^ ^ ^3.7 run summon minecraft:marker ^-0.6 ^ ^ {Tags:["smoke_wall"]}
execute as @e[tag=smoke_place] at @s positioned ^ ^ ^3.7 run summon minecraft:marker ^0.6 ^ ^ {Tags:["smoke_wall"]}
execute as @e[tag=smoke_place] at @s positioned ^ ^ ^3.7 run summon minecraft:marker ^1.8 ^ ^-0.2 {Tags:["smoke_wall"]}
execute as @e[tag=smoke_place] at @s positioned ^ ^ ^3.7 run summon minecraft:marker ^3.0 ^ ^-0.6 {Tags:["smoke_wall"]}

kill @e[tag=smoke_place]