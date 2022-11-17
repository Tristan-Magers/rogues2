scoreboard players add @s timer 1

execute at @s run tp @s ~ ~-0.1 ~
execute at @s run function game:detection/doesfitperson
execute at @s[tag=!bool] run execute at @s run tp @s ~ ~0.1 ~
execute at @s[tag=bool] run function game:characters/barbose/spells/project_fall