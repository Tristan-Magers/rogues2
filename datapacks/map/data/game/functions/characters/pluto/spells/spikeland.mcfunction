execute as @e[tag=hittest,distance=..5] at @s positioned ~-.5 ~-.4 ~-.5 if entity @e[dx=0.3,dz=0.3,dy=1.3,tag=spike,distance=..5] run tag @s add gethit
execute as @e[tag=hittest2,distance=..1.1] at @s positioned ~ ~ ~ if entity @e[tag=spike,distance=..1.1] run tag @s add gethit

tag @a[scores={shield=1..}] remove gethit
tag @a[scores={Invul=1..}] remove gethit

playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 .4
playsound minecraft:block.gravel.hit master @a ~ ~ ~ 1 1.2
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.5
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 2

particle minecraft:campfire_cosy_smoke ^ ^ ^-.3 .3 .3 .3 .03 4 force

execute if block ~ ~ ~ cobweb run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,CustomName:"\"webnoblock\"",Invisible:1,Duration:45}
execute if block ~ ~ ~ cobweb run setblock ~ ~ ~ air destroy

tag @e[tag=gethit] add resremove
effect give @e[tag=gethit] instant_damage
effect give @e[tag=gethit] resistance 1 10 true

execute as @e[tag=gethit,type=!player] store result score @s healthreal run data get entity @s Health

scoreboard players remove @e[tag=gethit,type=!player] healthreal 1

execute as @e[tag=gethit,type=!player] at @s run execute store result entity @s Health double 1 run scoreboard players get @s healthreal

execute as @a[tag=!isthrow,tag=gethit] at @s run function game:players/damageone

tag @s add kill

kill @s