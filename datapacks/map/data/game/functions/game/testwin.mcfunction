execute as @a[tag=game] run scoreboard players operation @s tpoints = @s Score
scoreboard players operation @e[scores={map=0..},limit=1] tpoints > @a[tag=game] tpoints
execute as @a[tag=game] run scoreboard players operation @s tpoints -= @e[scores={map=0..},limit=1] tpoints
scoreboard players reset @e[scores={map=0..},limit=1] tpoints

execute if entity @a[scores={tpoints=0..,class=1},tag=game] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=1}]"},{"text":" ("},{"text":"Sparket","color":"red"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=2},tag=game] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=2}]"},{"text":" ("},{"text":"Vohelm","color":"green"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=3},tag=game] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=3}]"},{"text":" ("},{"text":"Emma","color":"aqua"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=4},tag=game] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=4}]"},{"text":" ("},{"text":"Pluto","color":"gray"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=5},tag=game] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=5}]"},{"text":" ("},{"text":"Halt","color":"gold"},{"text":") Wins!","color":"white"}]
execute if entity @a[scores={tpoints=0..,class=6},tag=game] run tellraw @a [{"selector":"@a[scores={tpoints=0..,class=6}]"},{"text":" ("},{"text":"Barbose","color":"yellow"},{"text":") Wins!","color":"white"}]
