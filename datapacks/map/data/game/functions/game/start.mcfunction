tp @a[tag=ready,tag=lobby] -91 41 61
tp @a[tag=ready,tag=spirlob] -91 41 61
tag @a[tag=ready,tag=spirlob] add lobby

scoreboard objectives remove Score
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score

execute as @e[scores={map=1}] run function game:game/maps/map1/spawn
execute as @e[scores={map=2}] run function game:game/maps/map2/spawn
execute as @e[scores={map=3}] run function game:game/maps/map3/spawn
execute as @e[scores={map=4}] run function game:game/maps/map4/spawn
execute as @e[scores={map=5}] run function game:game/maps/map5/spawn

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