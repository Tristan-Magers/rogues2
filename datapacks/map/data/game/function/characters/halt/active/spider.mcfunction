scoreboard players add @s spiderT 1
kill @s[scores={spiderT=190..}]

team join noColide @s

execute if entity @s[scores={spiderT=1..11}] run tp @s ^ ^.11 ^.11
execute if entity @s[scores={spiderT=12..}] run function game:characters/halt/active/spidermove