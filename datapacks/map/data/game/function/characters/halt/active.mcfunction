#wrong spider
#execute as @s[tag=wrong_spider] run say ws
scoreboard players set @s[tag=wrong_spider] haltboost 0
scoreboard players set @s[tag=wrong_spider] haltdamage 0
tag @s remove wrong_spider

#
execute as @s[scores={spider_delay=0}] at @s run function game:spells/manaup
scoreboard players remove @s[scores={spider_delay=0..}] spider_delay 1

#spider kill
tag @s add me
scoreboard players operation @e[type=cave_spider] playerID -= @s playerID
execute as @e[type=cave_spider,scores={playerID=0}] run scoreboard players add @a[tag=me] spidercount 1
scoreboard players operation @e[type=cave_spider] playerID += @s playerID
tag @s remove me

scoreboard players operation @s scounttest -= @s spidercount

execute as @s[scores={cavekill=1..,scounttest=1..}] at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 0.3 2
scoreboard players add @s[scores={cavekill=1..,scounttest=1..}] Mana 4
scoreboard players set @s[scores={Mana=15..}] Mana 15
scoreboard players set @s[scores={cavekill=1..,scounttest=..0}] haltboost 0
scoreboard players set @s[scores={cavekill=1..,scounttest=..0}] haltdamage 0
tellraw @s[scores={cavekill=1..,scounttest=1..}] [{"text":"["},{"bold":true,"color":"gold","text":"★"},{"text":"] SPIDER KILL +"},{"bold":true,"color":"gold","text":"4 MANA"}]
scoreboard players set @s[scores={cavekill=1..}] cavekill 0

scoreboard players operation @s scounttest = @s spidercount
scoreboard players set @s spidercount 0

#
execute as @s[tag=!spiritworld,scores={shift=1..}] at @s run function game:characters/halt/active/walldetect
execute as @s[tag=!spiritworld,scores={spiderwall=0..}] at @s run function game:characters/halt/active/wallmove
execute as @s[scores={haltboost=1..}] at @s run function game:characters/halt/active/haltboost

execute as @s[scores={hover=1..}] at @s run function game:characters/halt/active/hover
execute as @s[scores={hover=0}] at @s run effect clear @s levitation
execute as @s[scores={hover=0}] at @s run scoreboard players set @s nolev 2
scoreboard players set @s[scores={hover=0}] invisoff 8

scoreboard players remove @s hover 1

execute as @s[scores={hover=-1}] at @s run function game:spells/manaup

#
execute if entity @s[scores={haltdamage=40..}] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 2
execute if entity @s[scores={haltdamage=80..}] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1.4
execute if entity @s[scores={haltdamage=120..}] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.7
execute if entity @s[scores={haltdamage=160..}] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0

scoreboard players set @s[scores={haltdamage=24..}] wtimer 2

scoreboard players add @s[scores={haltdamage=40..}] healthshow 2
scoreboard players add @s[scores={haltdamage=80..}] healthshow 1
scoreboard players add @s[scores={haltdamage=120..}] healthshow 1
scoreboard players add @s[scores={haltdamage=160..}] healthshow 1

execute as @s[scores={haltdamage=40..79}] at @s anchored eyes positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~-1 ~ {Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+2"}'}
execute as @s[scores={haltdamage=80..119}] at @s anchored eyes positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~-1 ~ {Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+3"}'}
execute as @s[scores={haltdamage=120..159}] at @s anchored eyes positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~-1 ~ {Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+4"}'}
execute as @s[scores={haltdamage=160..}] at @s anchored eyes positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~-1 ~ {Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+5"}'}

#draining claw delay
execute as @s[scores={dcdelay=0}] at @s run function game:spells/manaup
scoreboard players remove @s[scores={dcdelay=0..}] dcdelay 1
scoreboard players set @s[scores={haltdamage=24..}] dcdelay 12

scoreboard players set @s haltdamage 0

#bow detect
execute as @s[scores={bowshot=1..}] run scoreboard players operation @e[type=arrow,scores={arrowlife=1},distance=..3] playerID = @s playerID
execute as @s[scores={bowshot=1..}] run tag @e[type=arrow,scores={arrowlife=1},distance=..3] add harrow
execute as @s[scores={bowshot=1..}] run execute as @e[type=arrow,scores={arrowlife=..1},limit=1] at @s run function game:projectile/arrowmot
execute as @s[scores={bowshot=1..}] run execute as @e[tag=harrow,scores={arrowlife=..1,arrowmot=..31664},limit=1] at @s run scoreboard players remove @p[scores={bowshot=1..}] btimer 1
execute as @s[scores={bowshot=1..}] run execute as @e[tag=harrow,scores={arrowlife=..1,arrowmot=..31664},limit=1] at @s run playsound minecraft:item.axe.strip master @a ~ ~ ~ 1 0
execute as @s[scores={bowshot=1..}] run execute as @e[tag=harrow,scores={arrowlife=..1,arrowmot=..31664},limit=1] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.7 1.2
execute as @s[scores={bowshot=1..}] run execute as @e[tag=harrow,scores={arrowlife=..1,arrowmot=..31664},limit=1] at @s run kill @s

#correct claws
clear @s[scores={wtimer=10..},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}] stone_sword
scoreboard players set @s[scores={wtimer=10..},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}}] wtimer 2

execute as @s[scores={wtimer=1..150},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] at @s run item modify entity @s weapon.mainhand game:knockback

execute as @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] at @s run execute as @a[distance=0.01..10] run attribute @s minecraft:knockback_resistance base set 0.2

#correct bow
clear @s[scores={btimer=0..},nbt=!{Inventory:[{id:"minecraft:bow",Slot:1b}]}] bow
scoreboard players set @s[scores={btimer=0..},nbt=!{Inventory:[{id:"minecraft:bow",Slot:1b}]}] btimer -1