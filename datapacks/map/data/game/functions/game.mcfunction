scoreboard players set @a[x=69,y=38,z=-30,distance=..20] press 0

scoreboard players add @e[type=arrow] arrowlife 1

time add 12

kill @e[type=minecraft:experience_orb]
xp add @a -10 levels
effect give @a[scores={hunger=..19}] minecraft:saturation 1 10 true

scoreboard players add @a playerID 0
execute as @r[scores={playerID=0}] at @s run scoreboard players add @e[name=numbers] playerID 1
scoreboard players operation @r[scores={playerID=0}] playerID = @e[name=numbers,limit=1,type=armor_stand] playerID

tag @a add hittest
tag @e[type=villager] add hittest
tag @e[tag=totem] add hittest
tag @e[tag=portalset] add hittest
tag @e[type=cave_spider] add hittest2
tag @e[tag=soulsend] add hittest2

#player in game
tag @a remove lobby
tag @a[x=-100,y=40,z=50,distance=..80] add lobby
tag @a[x=-22,y=6,z=24,distance=..30] add lobby
tag @a remove ingame
tag @a[x=-100,y=40,z=50,distance=120..] add ingame
tag @a[x=-150,y=48,z=20,dx=70,dy=50,dz=70,distance=..200] add ingame
execute as @a[tag=ingame] at @s run function game:players/ingame
execute as @a[tag=lobby] at @s run function game:players/lobby
clear @a[gamemode=!creative,tag=lobby,tag=!ingame]

#execute as @e[tag=totem] at @s run tp @s ~ ~ ~ ~ ~

#run game
function game:game/rungame

#remove resistance
effect clear @e[tag=resremove] minecraft:resistance
tag @e[tag=resremove] remove resremove

#spirit world
tag @a remove spiritworld
execute as @a[x=69,y=38,z=-30,distance=..20] at @s run function game:game/spiritrealm

#carrot on a stick
execute as @a[gamemode=adventure,tag=ingame,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] at @s run function game:spells/manaup
replaceitem entity @a[gamemode=adventure,tag=ingame,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick

#manage items
execute as @e[type=item] at @s run function game:game/item

#projectiles
function game:projectile

effect give @a[scores={glowing=1..}] glowing 10 10 true
effect clear @a[scores={glowing=..0}] glowing

scoreboard players set @a damageTakenTick 0
#scoreboard players set @a damageDealt 0

scoreboard players add @e[tag=dummytri] timer 1
kill @e[tag=dummytri,scores={timer=9..}]

#debug
execute as @a store result score @s damage run data get entity @s Health 100
execute as @e[type=minecraft:arrow] at @s run data merge entity @s {crit:1b}
execute as @e[type=minecraft:arrow] store result score @s damage run data get entity @s damage 100
scoreboard players set @e[scores={damage=600}] damage 601
execute as @e[type=minecraft:arrow] at @s run execute store result entity @s damage double .01 run scoreboard players get @s damage

#damage numbers
execute as @e[tag=damnum] at @s run tp @s ~ ~0.05 ~
scoreboard players add @e[tag=damnum] timer 1
kill @e[tag=damnum,scores={timer=25..}]
team join visible @e[tag=damnum,tag=!plus]
team join invisible @e[tag=damnum,tag=plus]

#menu
execute as @e[tag=charmask] at @s if entity @p[distance=..5] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=charmask] at @s unless entity @p[distance=..5] run tp @s ~ ~ ~ facing -22 6 24

function game:game/menu/portals