scoreboard players set @e[scores={map=6..}] map 1
scoreboard players set @e[scores={map=..0}] map 5

execute if entity @e[scores={map=1}] run say selected flower temple
execute if entity @e[scores={map=2}] run say selected cave temple
execute if entity @e[scores={map=3}] run say selected snow temple
execute if entity @e[scores={map=4}] run say selected mountain temple
execute if entity @e[scores={map=5}] run say selected ocean temple

execute if entity @e[scores={map=1}] run clone -33 36 -10 -23 18 -22 -85 35 68
execute if entity @e[scores={map=2}] run clone -20 18 -34 -31 35 -25 -85 36 68