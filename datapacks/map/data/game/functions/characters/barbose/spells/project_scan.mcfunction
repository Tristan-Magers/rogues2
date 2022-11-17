#
scoreboard players add @s timer 1

execute at @s run tp @s ^ ^ ^0.1

execute at @s run function game:inblock
execute at @s[tag=in,scores={timer=..800}] run function game:characters/barbose/spells/project_scan