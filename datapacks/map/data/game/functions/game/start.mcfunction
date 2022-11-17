execute as @a[tag=ready] run function game:characters/barbose/active/remove_save_spot

tp @a[tag=ready,tag=lobby] -91 41 61
tp @a[tag=ready,tag=spirlob] -91 41 61
tag @a[tag=ready,tag=spirlob] add lobby

scoreboard objectives remove Score
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score

scoreboard players operation @e[tag=ranmap] map = @e[tag=ranmap,limit=1] randommap

execute as @a[tag=ranchar] run scoreboard players operation @s class = @s ranchar

execute as @e[scores={map=1}] run function game:game/maps/map1/spawn
execute as @e[scores={map=2}] run function game:game/maps/map2/spawn
execute as @e[scores={map=3}] run function game:game/maps/map3/spawn
execute as @e[scores={map=4}] run function game:game/maps/map4/spawn
execute as @e[scores={map=5}] run function game:game/maps/map5/spawn
execute as @e[scores={map=6}] run function game:game/maps/map6/spawn

time set 0

scoreboard objectives remove Score
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score

scoreboard players set Time Score 270
scoreboard players set @e[name="Time Left"] Time 5400
scoreboard players set @e[name="Time Left"] TimeS 20

kill @e[tag=soulsend]

tag @e[scores={Time=-100..}] add noscore

execute as @a[tag=ready,tag=lobby] run function game:game/startp

execute as @a[tag=game,scores={class=1},tag=!ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Sparket","color":"red"}]
execute as @a[tag=game,scores={class=2},tag=!ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Vohelm","color":"green"}]
execute as @a[tag=game,scores={class=3},tag=!ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Emma","color":"aqua"}]
execute as @a[tag=game,scores={class=4},tag=!ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Pluto","color":"gray"}]
execute as @a[tag=game,scores={class=5},tag=!ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Halt","color":"gold"}]
execute as @a[tag=game,scores={class=6},tag=!ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Barbose","color":"yellow"}]

execute as @a[tag=game,scores={class=1},tag=ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Sparket","color":"red"},{"text":" (random)","color":"white"}]
execute as @a[tag=game,scores={class=2},tag=ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Vohelm","color":"green"},{"text":" (random)","color":"white"}]
execute as @a[tag=game,scores={class=3},tag=ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Emma","color":"aqua"},{"text":" (random)","color":"white"}]
execute as @a[tag=game,scores={class=4},tag=ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Pluto","color":"gray"},{"text":" (random)","color":"white"}]
execute as @a[tag=game,scores={class=5},tag=ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Halt","color":"gold"},{"text":" (random)","color":"white"}]
execute as @a[tag=game,scores={class=6},tag=ranchar] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Barbose","color":"yellow"},{"text":" (random)","color":"white"}]
