tag @a remove isthrow

scoreboard players operation @a playerID -= @s playerID
tag @a[scores={playerID=0}] add isthrow
scoreboard players operation @a playerID += @s playerID

function game:inblock

execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run effect give @e[tag=portalset,distance=..3,dx=0,dz=0,dy=1] instant_damage 1 1 true
execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run effect give @e[tag=!isthrow,type=player,distance=..3,dx=0,dz=0,dy=1] instant_damage 1 1 true
execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run scoreboard players set @e[tag=!isthrow,type=player,distance=..3,dx=0,dz=0,dy=1] damageob 3
execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run effect give @e[tag=!isthrow,tag=hittest,distance=..3,dx=0,dz=0,dy=1] instant_damage 1 1 true
execute as @s[tag=!in] at @s positioned ~-.5 ~-2 ~-.5 run tag @e[tag=!isthrow,tag=hittest,distance=..3,dx=0,dz=0,dy=1] add ded
execute as @s[tag=!in] at @s positioned ~ ~ ~ run effect give @e[tag=hittest2,distance=..1.6] instant_damage 1 1 true
execute as @s[tag=!in] at @s run particle minecraft:end_rod ~ ~.4 ~ .1 .1 .1 .25 40 force
execute as @s[tag=!in] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ .5 2 .2
execute as @s[tag=!in] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ .3 1 .3
execute as @s[tag=!in] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ .3 2 .1
execute as @s[tag=!in] at @s run scoreboard players set @e[distance=..3,name=web] move 1045
tag @s[tag=!in] add hitsome
kill @s[tag=!in]
particle minecraft:end_rod ~ ~ ~ .01 .01 .01 .007 1 force
execute as @s[scores={shotT=6..}] at @s run particle minecraft:crit ~ ~ ~ .1 .1 .1 .3 1

scoreboard players add @s shotT 1

tag @a remove isthrow

tp @s ^ ^ ^.2