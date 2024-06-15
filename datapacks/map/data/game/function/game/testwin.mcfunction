scoreboard players reset @e tpoints
scoreboard players set .highest tpoints 0
execute as @a[scores={Score=1..},tag=game,gamemode=adventure,tag=ingame] run scoreboard players operation @s tpoints = @s Score
scoreboard players operation .highest tpoints > @a[scores={Score=1..},tag=game,gamemode=adventure,tag=ingame] tpoints
execute as @a[scores={Score=1..},tag=game,gamemode=adventure,tag=ingame] run scoreboard players operation @s tpoints -= .highest tpoints

execute if entity @a[scores={tpoints=0..,class=1},tag=game,gamemode=adventure,tag=ingame] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=1}]"},{"text":" ("},{"text":"Sparket","color":"red"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=2},tag=game,gamemode=adventure,tag=ingame] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=2}]"},{"text":" ("},{"text":"Vohelm","color":"green"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=3},tag=game,gamemode=adventure,tag=ingame] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=3}]"},{"text":" ("},{"text":"Emma","color":"aqua"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=4},tag=game,gamemode=adventure,tag=ingame] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=4}]"},{"text":" ("},{"text":"Pluto","color":"gray"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=5},tag=game,gamemode=adventure,tag=ingame] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=5}]"},{"text":" ("},{"text":"Halt","color":"gold"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=6},tag=game,gamemode=adventure,tag=ingame] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=6}]"},{"text":" ("},{"text":"Barbose","color":"yellow"},{"text":") Wins!","color":"white"}]
