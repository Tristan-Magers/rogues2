execute as @s at @s run function game:characters/vohelm/spells/getdirtotem

team join noColide @s

scoreboard players set @s[scores={y=..0}] y 0
scoreboard players add @s y 140

execute as @s at @s run execute store result entity @s Motion[0] double .016 run scoreboard players get @s x
execute as @s at @s run execute store result entity @s Motion[1] double .004 run scoreboard players get @s y
execute as @s at @s run execute store result entity @s Motion[2] double .016 run scoreboard players get @s z