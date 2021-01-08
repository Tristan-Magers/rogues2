tp @s 15 4 -43
tag @s remove game
tag @s remove ready
tag @s remove tpno
tag @s remove spiritlob
tag @s remove spec
tag @s remove lobby
tag @s remove lobbyt
scoreboard players set @s Leave -1
scoreboard players set @s music1 0
clear @s
stopsound @s
gamemode adventure

function game:players/reset