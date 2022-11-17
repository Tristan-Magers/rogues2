#
scoreboard players add @s timer 1

execute as @s at @s run tp @s ~ ~ ~ ~2 ~

execute as @s[scores={timer=..20}] at @s run tp @s ~ ~.25 ~

kill @s[scores={timer=130..}]

particle minecraft:squid_ink ~ ~0.5 ~ 0.4 1 0.4 0.02 2 force