execute as @s at @s run function game:inblock 

execute as @e[tag=hittest,tag=!isthrow,distance=..5] at @s positioned ~-.5 ~-.4 ~-.5 run tag @e[dx=0.3,dz=0.3,dy=1.3,tag=spike,distance=..5] remove in
#execute as @e[tag=hittest,distance=..5] at @s positioned ~-.5 ~-.4 ~-.5 if entity @e[dx=0.3,dz=0.3,dy=1.3,tag=spike,distance=..5] run say test
execute as @e[tag=hittest2,tag=!isthrow,distance=..1.1] at @s positioned ~ ~ ~ run tag @e[tag=spike,distance=..1.1] remove in

execute as @s[tag=!in,tag=!kill] at @s run function game:characters/pluto/spells/spikeland

kill @s[scores={shotT=150..}]
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @s shotT 1

execute as @s at @s run tp @s[tag=!kill] ^ ^ ^.3

#execute as @s[tag=in,tag=!kill] at @s run function game:characters/pluto/spells/spikerec