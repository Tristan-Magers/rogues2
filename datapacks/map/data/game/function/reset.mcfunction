scoreboard objectives setdisplay sidebar
scoreboard players set @a Leave 1
scoreboard players set @a music1 -10
scoreboard players set @a class 4
tag @a remove ranchar
scoreboard players set @e[scores={map=0..}] mapnumber 1
function game:game/menu/mapchange
time set night

#version sign
data merge block -101 41 64 {front_text:{messages:['{"text":""}','{"text":"Version 2.1.9","bold":true}','{"text":"click for changes","italic":true,"clickEvent":{"action":"run_command","value":"/tag @s add notesclick"}}','{"text":""}']}}

#
setblock -112 57 35 minecraft:crimson_roots