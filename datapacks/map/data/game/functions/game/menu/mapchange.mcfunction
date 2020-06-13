scoreboard players set @e[scores={map=5..}] map 1
scoreboard players set @e[scores={map=..0}] map 4

execute if entity @e[scores={map=1}] run say selected flower temple
execute if entity @e[scores={map=2}] run say selected cave temple
execute if entity @e[scores={map=3}] run say selected snow temple
execute if entity @e[scores={map=4}] run say selected mountain temple