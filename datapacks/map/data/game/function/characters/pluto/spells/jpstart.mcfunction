execute as @s at @s run function game:characters/pluto/spells/getdirsb

scoreboard players set @s[scores={y=..0}] y 0
scoreboard players add @s y 110

execute as @s at @s run execute store result entity @s Motion[0] double .012 run scoreboard players get @s x
execute as @s at @s run execute store result entity @s Motion[1] double .004 run scoreboard players get @s y
execute as @s at @s run execute store result entity @s Motion[2] double .012 run scoreboard players get @s z