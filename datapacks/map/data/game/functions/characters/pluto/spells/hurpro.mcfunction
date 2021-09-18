scoreboard players remove @s Mana 5

execute as @e[type=arrow,scores={arrowlife=..1},limit=1] at @s run function game:projectile/arrowmot
scoreboard players operation @s arrowmot = @e[type=arrow,scores={arrowlife=..1},limit=1] arrowmot
kill @e[type=arrow,scores={arrowlife=..1},limit=1]

execute as @s[scores={arrowmot=..11664}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["hurpro"],ArmorItems:[{},{},{},{Count:1,id:redstone}],Invisible:1}
execute as @s[scores={arrowmot=11665..46656}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["hurpro"],ArmorItems:[{},{},{},{Count:1,id:scute}],Invisible:1}
execute as @s[scores={arrowmot=46657..104976}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["hurpro"],ArmorItems:[{},{},{},{Count:1,id:stick}],Invisible:1}
execute as @s[scores={arrowmot=104977..186624}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["hurpro"],ArmorItems:[{},{},{},{Count:1,id:wheat}],Invisible:1}
execute as @s[scores={arrowmot=186625..291600}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["hurpro"],ArmorItems:[{},{},{},{Count:1,id:wheat_seeds}],Invisible:1}
execute as @s[scores={arrowmot=291601..}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["hurpro"],ArmorItems:[{},{},{},{Count:1,id:gunpowder}],Invisible:1}

execute as @s at @s run scoreboard players set @e[tag=hurpro,limit=1,sort=nearest] hurpower 6
execute as @s[scores={arrowmot=..291600}] at @s run scoreboard players set @e[tag=hurpro,limit=1,sort=nearest] hurpower 5
execute as @s[scores={arrowmot=..186624}] at @s run scoreboard players set @e[tag=hurpro,limit=1,sort=nearest] hurpower 4
execute as @s[scores={arrowmot=..104976}] at @s run scoreboard players set @e[tag=hurpro,limit=1,sort=nearest] hurpower 3
execute as @s[scores={arrowmot=..46656}] at @s run scoreboard players set @e[tag=hurpro,limit=1,sort=nearest] hurpower 2
execute as @s[scores={arrowmot=..11664}] at @s run scoreboard players set @e[tag=hurpro,limit=1,sort=nearest] hurpower 1

execute as @s at @s run tp @e[tag=hurpro,limit=1,sort=nearest] @p
scoreboard players operation @e[tag=hurpro,limit=1,sort=nearest] playerID = @s playerID
execute as @s at @s run tp @e[tag=hurpro,limit=1,sort=nearest] ~ ~.5 ~
execute as @e[tag=hurpro,limit=1,sort=nearest] at @s run function game:faceaway2

clear @s bow
tag @s add bowreload