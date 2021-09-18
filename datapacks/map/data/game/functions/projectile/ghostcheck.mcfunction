tag @s remove in

execute if block ~ ~ ~ air run tag @s add in

execute as @s[tag=!in] run function game:detailin

tag @s[tag=!in,tag=!block] add newblock
tag @s[tag=!in] add block
tag @s[tag=in] remove block

tag @s add me

scoreboard players operation @a playerID -= @s playerID
tag @a[scores={playerID=0}] add puser
scoreboard players operation @a playerID += @s playerID

tag @e[type=villager] add metarget
tag @e[type=creeper] add metarget
tag @e[tag=portalset] add metarget
tag @e[tag=totem] add metarget
tag @a[tag=!puser] add metarget

execute positioned ~-.3 ~-0.2 ~-.3 run tag @e[tag=metarget,distance=..3,dx=0,dz=0,dy=1] add beamhit1
execute positioned ~-.7 ~-1.5 ~-.7 run tag @e[tag=beamhit1,tag=metarget,distance=..3,dx=0,dz=0,dy=1] add ehit

execute positioned ~ ~ ~ run tag @e[tag=hittest2,distance=..1,dx=0,dz=0,dy=1] add ehit

tag @e[tag=beamhit1] remove beamhit1
tag @e[tag=metarget] remove metarget

execute as @e[tag=ehit] run tag @e[tag=me] add ehit

tag @s[tag=ehit] add newblock
tag @s[tag=!ehit,tag=newblock] add weakhit

execute as @s[tag=newblock] run particle minecraft:explosion ~ ~ ~ 0 0 0 .05 1
execute as @s[tag=newblock] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ .5 2
execute as @s[tag=newblock] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ .6 2
execute as @s[tag=newblock] run particle minecraft:flame ~ ~ ~ 0 0 0 .1 10 force
execute as @s[tag=newblock] run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .02 5 force
execute as @s[tag=newblock] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute as @s[tag=newblock] run playsound minecraft:item.firecharge.use master @a ~ ~ ~ .4 2

tag @s remove newblock

execute as @a[tag=ehit,scores={shield=1..}] run playsound minecraft:item.shield.block master @s ~ ~ ~ 1 2
execute as @a[tag=ehit,scores={shield=1..}] run execute as @e[tag=puser] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 1 2
execute as @a[tag=ehit,scores={shield=1..}] run execute as @e[tag=puser] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
scoreboard players set @a[tag=ehit,scores={shield=1..}] glowing 28
tag @a[scores={shield=1..}] remove ehit
tag @a[scores={Invul=1..}] remove ehit

effect give @e[tag=ehit,tag=!me] instant_damage
effect give @e[tag=ehit,tag=!me] resistance 1 10 true

execute as @s[tag=weakhit] run execute as @e[tag=ehit,limit=1] run execute as @e[tag=puser] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.7
execute as @s[tag=!weakhit] run execute as @e[tag=ehit,limit=1] run execute as @e[tag=puser] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1.1

execute as @e[tag=ehit,tag=!me,type=!player] store result score @s healthreal run data get entity @s Health

execute as @s[tag=!weakhit] run scoreboard players remove @e[tag=ehit,tag=!me,type=!player] healthreal 7
execute as @s[tag=weakhit] run scoreboard players remove @e[tag=ehit,tag=!me,type=!player] healthreal 6

execute as @e[tag=ehit,tag=!me,type=!player] at @s run execute store result entity @s Health double 1 run scoreboard players get @s healthreal

tag @a[tag=gethit] add hasres
tag @a[tag=gethit,scores={manaboost=..0},tag=!totemres] remove hasres

execute as @s[tag=!weakhit] run execute as @a[tag=ehit,tag=!me,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}
execute as @s[tag=!weakhit] run execute as @a[tag=ehit,tag=!me,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-7"}'}
execute as @s[tag=weakhit] run execute as @a[tag=ehit,tag=!me,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[tag=weakhit] run execute as @a[tag=ehit,tag=!me,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}

execute as @a[tag=ehit,tag=!me] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .3 .8 .3 2 20 force
execute as @a[tag=ehit,tag=!me] at @s run playsound minecraft:entity.player.hurt master @a

execute as @s[tag=!weakhit] run scoreboard players remove @a[tag=ehit,tag=!me,tag=hasres] healthshow 6
execute as @s[tag=!weakhit] run scoreboard players remove @a[tag=ehit,tag=!me,tag=!hasres] healthshow 7
execute as @s[tag=weakhit] run scoreboard players remove @a[tag=ehit,tag=!me,tag=hasres] healthshow 5
execute as @s[tag=weakhit] run scoreboard players remove @a[tag=ehit,tag=!me,tag=!hasres] healthshow 6

scoreboard players set @a[tag=ehit,tag=!me] glowing 22

tag @a remove puser
tag @s remove me

execute as @s[tag=ehit] run kill @s
tag @e[distance=0.01..,tag=ehit] remove ehit

#particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 0 1 force