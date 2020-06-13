scoreboard players add @s gertimer 1

#execute as @s[scores={gertimer=5}] at @s run tp @s ~ ~1 ~

execute as @s[scores={gertimer=1}] at @s run function game:characters/barbose/spells/sbstart

execute as @s[scores={gertimer=34}] at @s run summon creeper ~ ~.8 ~ {ingited:1,Fuse:0}

tp @s[scores={gertimer=38..}] ~ ~-1000 ~
execute if entity @s[scores={gertimer=38..}] run kill @e[tag=head,limit=1,sort=nearest]
kill @s[scores={gertimer=38..}]

execute store result score @s keepxt run data get entity @s Motion[0] 10000
execute store result score @s keepzt run data get entity @s Motion[2] 10000

#scoreboard players add @s keepx 0
#scoreboard players add @s keepz 0

#scoreboard players operation @s[scores={keepxt=1..,keepx=0..}] keepx = @s keepxt
#scoreboard players operation @s[scores={keepxt=..-1,keepx=..0}] keepx = @s keepxt

#scoreboard players operation @s[scores={keepzt=1..,keepz=0..}] keepz = @s keepzt
#scoreboard players operation @s[scores={keepzt=..-1,keepz=..0}] keepz = @s keepzt

#scoreboard players remove @s[scores={keepx=100..}] keepx 100
#scoreboard players add @s[scores={keepx=..-100}] keepx 100

#scoreboard players remove @s[scores={keepz=100..}] keepz 100
#scoreboard players add @s[scores={keepz=..-100}] keepz 100

#execute as @s at @s run execute store result entity @s[scores={keepxt=0}] Motion[0] double .0001 run scoreboard players get @s keepx
#execute as @s at @s run execute store result entity @s[scores={keepzt=0}] Motion[0] double .0001 run scoreboard players get @s keepz

particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 0 force