tag @s remove in

execute if block ~ ~ ~ air run tag @s add in

execute as @s[tag=!in] run function game:detailin

execute as @s[tag=soulsend] at @s run execute if block ~ ~ ~ barrier run tag @s add bar

execute as @s[tag=pshot,scores={shotT=2..}] at @s run execute as @e[type=villager,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=pshot,distance=..5] remove in
execute as @s[tag=lshot,scores={shotT=5..}] at @s run execute as @e[type=creeper,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=lshot,distance=..5] remove in

execute as @s[tag=pshot,scores={shotT=2..}] at @s run execute as @e[tag=portalset,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=pshot,distance=..5] remove in
execute as @s[tag=lshot,scores={shotT=5..}] at @s run execute as @e[tag=portalset,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=lshot,distance=..5] remove in

execute as @s[tag=pshot,scores={shotT=2..}] at @s run execute as @e[tag=totem,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=pshot,distance=..5] remove in
execute as @s[tag=lshot,scores={shotT=5..}] at @s run execute as @e[tag=totem,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=lshot,distance=..5] remove in

#execute as @s[tag=pshot,scores={shotT=2..}] at @s run execute as @e[type=cave-spider,distance=..0.6] at @s run tag @e[tag=pshot,distance=..0.6] remove in
#execute as @s[tag=lshot,scores={shotT=5..}] at @s run execute as @e[type=cave_spider,distance=..0.6] at @s run tag @e[tag=lshot,distance=..0.6] remove in

execute as @s[tag=pshot,scores={shotT=2..}] at @s run execute as @e[type=player,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=pshot,distance=..5] remove in
execute as @s[tag=lshot,scores={shotT=5..}] at @s run execute as @e[type=player,distance=..2] at @s positioned ~-.5 ~ ~-.5 run tag @e[dx=0,dz=0,dy=1,tag=lshot,distance=..5] remove in

execute as @s[tag=hurpro] at @s positioned ~ ~ ~ run execute as @e[tag=hittest,tag=!isthrow,distance=..5] at @s positioned ~-.85 ~-1.7 ~-.85 run tag @e[dx=0.5,dz=0.5,dy=1.9,tag=hurpro,distance=..5] remove in
execute as @s[tag=hurpro] at @s positioned ~ ~ ~ run execute as @e[tag=hittest,distance=..5] at @s positioned ~-.85 ~-1.7 ~-.85 if entity @e[dx=0.5,dz=0.5,dy=1.9,tag=hurpro,distance=..5] run tag @s add gethit
execute as @s[tag=hurpro] at @s positioned ~ ~ ~ run execute as @e[tag=hittest2,tag=!isthrow,distance=..1.5] at @s positioned ~ ~ ~ run tag @e[tag=hurpro,distance=..1.5] remove in
execute as @s[tag=hurpro] at @s positioned ~ ~ ~ run execute as @e[tag=hittest2,distance=..1.5] at @s positioned ~ ~ ~ if entity @e[tag=hurpro,distance=..1.5] run tag @s add gethit