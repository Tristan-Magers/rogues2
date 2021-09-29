scoreboard players set @e[scores={map=1..6},tag=ranmap,tag=back] map 6
scoreboard players set @e[scores={map=1..6},tag=ranmap,tag=!back] map 1
scoreboard players set @e[scores={map=7..},tag=ranmap] map 1
scoreboard players set @e[scores={map=..0},tag=ranmap] map 6

tag @e[scores={map=-100..}] remove back
tag @e[scores={map=1..6}] remove ranmap

tag @e[scores={map=7..},tag=!ranmap] add ranmap
tag @e[scores={map=..0},tag=!ranmap] add ranmap

execute if entity @e[scores={map=1},tag=!ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Flower Temple","color":"yellow"}]
execute if entity @e[scores={map=2},tag=!ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Cave Temple","color":"red"}]
execute if entity @e[scores={map=3},tag=!ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Snow Temple","color":"aqua"}]
execute if entity @e[scores={map=4},tag=!ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Mountain Temple","color":"green"}]
execute if entity @e[scores={map=5},tag=!ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Island Temple","color":"dark_aqua"}]
execute if entity @e[scores={map=6},tag=!ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Forest Temple","color":"dark_green"}]
execute if entity @e[tag=ranmap] run tellraw @a [{"text":"Map Selected: "},{"text":"Random","color":"gray"}]

setblock -77 43 67 air
execute if entity @e[scores={map=1}] run clone -33 36 -10 -23 18 -22 -85 35 68
execute if entity @e[scores={map=2}] run clone -20 18 -34 -31 35 -25 -85 36 68
execute if entity @e[scores={map=3}] run clone -20 18 -34 -31 35 -44 -85 36 68
execute if entity @e[scores={map=4}] run clone -20 21 -46 -31 38 -59 -85 36 68
execute if entity @e[scores={map=5}] run clone -20 18 -59 -31 35 -70 -85 36 68
execute if entity @e[tag=ranmap] run clone -20 18 -73 -31 35 -87 -85 36 67

particle minecraft:squid_ink -81.49 42.00 73.06 2.2 2.2 2.2 .2 80 force

playsound minecraft:block.basalt.place master @a -87 41 65 1 0
playsound minecraft:block.barrel.close master @a -87 41 65 1 2
playsound minecraft:block.chain.place master @a -87 41 65 0.7 0
playsound minecraft:item.axe.strip master @a -87 41 65 1 0
playsound minecraft:item.shovel.flatten master @a -87 41 65 1 0

scoreboard players set @e[scores={map=0..}] mapcdelay 8
setblock -93 41 66 air
setblock -87 41 60 air