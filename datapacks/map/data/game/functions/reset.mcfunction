scoreboard objectives setdisplay sidebar
scoreboard players set @a Leave 1
scoreboard players set @a class 1
scoreboard players set @e[scores={map=0..}] map 1
function game:game/menu/mapchange
time set night