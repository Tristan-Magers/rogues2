scoreboard objectives setdisplay sidebar
scoreboard players set @a Leave 1
scoreboard players set @a class 1
tag @a remove ranchar
scoreboard players set @e[scores={map=0..}] map 1
function game:game/menu/mapchange
time set night

#version sign
setblock -101 41 64 birch_sign[rotation=10]{Text2:'{"text":"Version 1.3","color":"black","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add notesclick"}}',Text3:'{"text":"Click for note","italic":true}'} destroy