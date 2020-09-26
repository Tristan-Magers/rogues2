execute as @s[scores={class=1}] at @s run function game:characters/sparket/spells
execute as @s[scores={class=2}] at @s run function game:characters/vohelm/spells
execute as @s[scores={class=3}] at @s run function game:characters/emma/spells
execute as @s[scores={class=4}] at @s run function game:characters/pluto/spells
execute as @s[scores={class=5}] at @s run function game:characters/halt/spells
execute as @s[scores={class=6}] at @s run function game:characters/barbose/spells

execute as @s[gamemode=creative] at @s run function game:characters/sparket/spells
execute as @s[gamemode=creative] at @s run function game:characters/vohelm/spells
execute as @s[gamemode=creative] at @s run function game:characters/emma/spells
execute as @s[gamemode=creative] at @s run function game:characters/pluto/spells
execute as @s[gamemode=creative] at @s run function game:characters/halt/spells
execute as @s[gamemode=creative] at @s run function game:characters/barbose/spells

function game:spells/manaup

scoreboard players set @s presstut -500

scoreboard players set @s pressdelay 0
scoreboard players set @s press 0