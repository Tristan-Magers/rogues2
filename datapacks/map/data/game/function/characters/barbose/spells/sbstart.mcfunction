execute as @s at @s run function game:characters/barbose/spells/getdirsb

scoreboard players add @s y 100

summon minecraft:slime ~ ~.5 ~ {Size:0,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000}],Tags:["gernade"],Invulnerable:1,Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.movement_speed,Base:-1},{Name:generic.attack_damage,Base:0},{Name:generic.attackKnockback,Base:0}],Passengers:[{id:"minecraft:armor_stand",Small:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["head"],Invisible:1,ArmorItems:[{},{},{},{count:1,id:lime_dye}],DisabledSlots:4144959}]}
#say @e[tag=gernade,distance=..1,limit=1,sort=nearest,type=slime]
scoreboard players operation @e[tag=gernade,distance=..1,limit=1,sort=nearest,type=slime] playerID = @s playerID

scoreboard players add @e[type=slime] gertimer 0
scoreboard players set @e[type=slime,limit=1,sort=nearest] gertimer 8
team join noColide @e[type=minecraft:slime]

scoreboard players operation @e[type=slime,limit=1,sort=nearest] y = @s y

execute as @s at @s run execute store result entity @e[type=slime,limit=1,sort=nearest] Motion[0] double .0055 run scoreboard players get @s x
execute as @s at @s run execute store result entity @e[type=slime,limit=1,sort=nearest] Motion[1] double .0043 run scoreboard players get @s y
execute as @s at @s run execute store result entity @e[type=slime,limit=1,sort=nearest] Motion[2] double .0055 run scoreboard players get @s z

tag @s add imdead

kill @s