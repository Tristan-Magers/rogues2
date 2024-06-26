effect give @s[tag=!arena] minecraft:resistance 1 10 true
#effect clear @s minecraft:jump_boost
effect give @s[tag=!arena] minecraft:weakness 3 10 true
scoreboard players set @s[tag=!arena] invisoff 10
scoreboard players set @s[scores={noname=1..},tag=!arena] noname 0

tag @s remove spiritworld
tag @s remove spirlob
tag @s remove arena

execute if entity @s[tag=ingame] run function game:players/lobbytop
execute if entity @s[tag=!ingame] run function game:players/lobbynomove

scoreboard players set @s points 0
scoreboard players set @s venge -100

scoreboard players set @s[tag=!arena,scores={healthshow=..4}] healthshow 4
scoreboard players add @s[tag=!arena] healthshow 1

tag @s add vengeuse

scoreboard players set @s[tag=ingame] char_text 70
scoreboard players set @s[tag=insel] char_text 1
scoreboard players add @s[gamemode=adventure,x=-144,y=23,z=-42,distance=15..] char_text 1
scoreboard players set @s[scores={char_text=80..}] char_text 0

title @s[scores={char_text=30},tag=!ready] actionbar {"text":"Not Joined"}
title @s[scores={char_text=30,class=1},tag=ready,tag=!ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"Sparket","color":"red"}]
title @s[scores={char_text=30,class=2},tag=ready,tag=!ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"Vohelm","color":"green"}]
title @s[scores={char_text=30,class=3},tag=ready,tag=!ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"Emma","color":"aqua"}]
title @s[scores={char_text=30,class=4},tag=ready,tag=!ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"Pluto","color":"gray"}]
title @s[scores={char_text=30,class=5},tag=ready,tag=!ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"Halt","color":"gold"}]
title @s[scores={char_text=30,class=6},tag=ready,tag=!ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"Barbose","color":"yellow"}]
title @s[scores={char_text=30},tag=ready,tag=ranchar] actionbar [{"text":"Spirit Selected : "},{"text":"R","color":"red"},{"text":"A","color":"green"},{"text":"N","color":"aqua"},{"text":"D","color":"gray"},{"text":"O","color":"gold"},{"text":"M","color":"yellow"}]