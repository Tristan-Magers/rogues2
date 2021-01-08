scoreboard players add @s gertimer 1

execute as @s[scores={gertimer=1}] at @s run tp @s ~ ~1 ~

execute as @s[scores={gertimer=1}] at @s run function game:characters/pluto/spells/jpstart

execute as @s[scores={gertimer=20..}] at @s unless block ~ ~ ~ air run tp @s ~ ~.1 ~
execute as @s[scores={gertimer=20..}] at @s if block ~ ~-.1 ~ air run tp @s ~ ~-.1 ~

execute as @s[scores={gertimer=20..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=50..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=75..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=100..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=120..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=150..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=175..}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @s[scores={gertimer=200..}] at @s run tp @s ~ ~ ~ ~2 ~

execute as @s[scores={gertimer=20..}] at @s if entity @a[distance=..1.3,gamemode=adventure,tag=!nofalldam] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .5 1.3
execute as @s[scores={gertimer=20..}] at @s if entity @a[distance=..1.3,gamemode=adventure,tag=!nofalldam] run particle minecraft:cloud ~ ~1 ~ .1 .1 .1 .1 10 force

execute as @s[scores={gertimer=20..}] at @s if entity @a[distance=..1.3,gamemode=adventure,tag=nofalldam,scores={glowing=..20}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .5 1.3
execute as @s[scores={gertimer=20..}] at @s if entity @a[distance=..1.3,gamemode=adventure,tag=nofalldam,scores={glowing=..20}] run particle minecraft:cloud ~ ~1 ~ .1 .1 .1 .1 10 force

execute as @s[scores={gertimer=20..}] at @s run scoreboard players set @a[distance=..1.3,gamemode=adventure] glowing 40
execute as @s[scores={gertimer=20..}] at @s run effect give @a[distance=..1.3,gamemode=adventure] minecraft:levitation 1 12 true
execute as @s[scores={gertimer=20..}] at @s run effect give @a[distance=..1.3,gamemode=adventure] minecraft:speed 2 2 true
#execute as @s[scores={gertimer=20..}] at @s run effect give @a[distance=..1.3,gamemode=adventure] minecraft:slow_falling 2 0 true
execute as @s[scores={gertimer=20..}] at @s run tag @a[distance=..1.5,gamemode=adventure] add nofalldam
execute as @s[scores={gertimer=20..}] at @s run scoreboard players set @a[distance=..1.5,gamemode=adventure] nofalldamage 3

execute as @s[scores={gertimer=130}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .7 0
execute as @s[scores={gertimer=130}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ .7 1.4
execute as @s[scores={gertimer=140..}] at @s run particle minecraft:cloud ~ ~1 ~ .1 .1 .1 .1 20 force
kill @s[scores={gertimer=140..}]