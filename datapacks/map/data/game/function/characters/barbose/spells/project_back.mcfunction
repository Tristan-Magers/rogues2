execute at @s run function game:detection/doesfitperson
execute at @s[tag=!bool] run tp @s ^ ^ ^-0.1
execute at @s[tag=!bool,scores={timer=1..}] run function game:characters/barbose/spells/project_back