#
scoreboard players add @s timer 1

execute at @s run tp @s ^ ^ ^0.1
execute at @s if block ~ ~ ~ barrier run tag @s add hit_barrier

tag @s[scores={timer=801..}] add hit_barrier

execute at @s[tag=!hit_barrier] run function game:inblock
execute at @s[tag=in,scores={timer=..800},tag=!hit_barrier] run function game:characters/barbose/spells/project_scan