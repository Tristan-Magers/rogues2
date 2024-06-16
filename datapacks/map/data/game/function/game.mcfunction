effect give @a minecraft:fire_resistance 10 10 true
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0.0

#new player
scoreboard players set @a[tag=!has_joined] tutorialtime 1
tag @a add has_joined

#leave
scoreboard players add @a Leave 0
execute as @a[scores={Leave=0..}] at @s run function game:players/leave
effect give @a[gamemode=adventure,x=-144,y=23,z=-42,distance=..20] minecraft:resistance 3 3 true
effect give @a[gamemode=adventure,x=-144,y=23,z=-42,distance=..20] minecraft:weakness 3 3 true

# arena dummies
execute as @e[tag=arena_dummy] at @s run function game:game/arena_dummy

#heads
execute as @e[tag=phead] run data merge entity @s {CustomNameVisible:0b}
execute as @a at @s positioned ^ ^ ^3.5 run execute as @e[tag=phead,distance=..4] run data merge entity @s {CustomNameVisible:1b}

#spec
execute as @a[tag=spec] at @s run function game:players/inspec

#music
scoreboard players add @a[tag=lobby] music1 1
scoreboard players add @a[tag=spiritworldt,tag=spirlob] music1 1
#scoreboard players set @a[tag=!lobby,tag=!spiritworldt,tag=!spiritworldt2] music1 0
scoreboard players set @a[tag=nomusic,scores={music1=..2}] music1 0
scoreboard players set @a[tag=nomusic,scores={music1=3..2110}] music1 2107
scoreboard players set @a[tag=nomusic,scores={music1=3..2110}] music1 2107
scoreboard players set @a[tag=nomusic,scores={music1=2111..}] music1 0
scoreboard players set @a[scores={music1=4400..}] music1 0
execute as @a[scores={music1=2}] at @s run stopsound @s
execute as @a[scores={music1=2}] at @s run playsound minecraft:music_disc.stal master @s ~ ~ ~ 0.8 1
execute as @a[scores={music1=2110}] at @s run stopsound @s
execute as @a[scores={music1=2110}] at @s run playsound minecraft:music_disc.chirp master @s ~ ~ ~ 0.8 1

#spawn
scoreboard players set @a[x=14,y=4,z=-41,distance=..20,gamemode=adventure,tag=game] respawn 100
tp @a[x=14,y=4,z=-41,distance=..20,gamemode=adventure,tag=!game] -145 23 -43 90 -1

effect give @a[x=-150,y=23,z=-43,distance=..10] minecraft:invisibility 1 0 true

scoreboard players set @a[x=69,y=38,z=-30,distance=..20] press 0

scoreboard players add @e[type=arrow] arrowlife 1

execute unless entity @a[tag=ingame,tag=!lobby] run time set 12500
execute if entity @a[tag=ingame,tag=!lobby] run time add 12

kill @e[type=minecraft:experience_orb]
xp set @a 0 levels
effect give @a[scores={hunger=..19}] minecraft:saturation 1 10 true

scoreboard players add @a playerID 0
execute as @r[scores={playerID=0}] at @s run scoreboard players add @e[name=numbers] playerID 1
scoreboard players operation @r[scores={playerID=0}] playerID = @e[name=numbers,limit=1,type=armor_stand] playerID

tag @a remove hittest
tag @a[gamemode=adventure] add hittest
tag @e[type=villager] add hittest
tag @e[type=creeper] add hittest
tag @e[type=zombie] add hittest
tag @e[tag=totem] add hittest
tag @e[tag=portalset] add hittest
tag @e[type=cave_spider] add hittest2
tag @e[tag=soulsend] add hittest2

#player in game
tag @a remove lobby
tag @a[gamemode=adventure,x=-144,y=23,z=-42,distance=..20] add lobby
tag @a[x=-100,y=40,z=50,distance=..80] add lobby
tag @a[x=1015,y=14,z=1014,distance=..80] add lobby
tag @a remove ingame
tag @a[tag=!lobby,x=-100,y=40,z=50,distance=120..] add ingame
tag @a[x=-150,y=48,z=20,dx=70,dy=50,dz=70,distance=..200] add ingame
tag @a[x=-122,y=53,z=3,distance=..30] add ingame
execute as @a[tag=ingame] at @s run function game:players/ingame
execute as @a[tag=lobby] at @s run function game:players/lobby
execute as @a[tag=ingame] at @s run function game:players/critcheck
clear @a[gamemode=!creative,tag=lobby,tag=!ingame,tag=!clear]
tag @a[gamemode=!creative,tag=lobby,tag=!ingame] add clear
tag @a[gamemode=!creative,tag=lobby,tag=!ingame] add cleart
tag @a[tag=!cleart] remove clear
tag @a remove cleart
execute as @a[scores={press=1..,pressdelay=..0},tag=lobby,tag=clear] at @s run function game:spells/clickl

#reset
execute as @a[tag=lobby,tag=!lobbyt] run function game:players/reset
tag @a[tag=lobby] add lobbyt
tag @a[tag=spirlob] add lobbyt
tag @a[tag=!lobby,tag=!spirlob,tag=!portsound,tag=!portsound2] remove lobbyt

#port sound
execute as @a[tag=portsound] at @s run function game:spells/manaup
execute as @a[tag=portsound2] at @s run function game:spells/manaup

execute as @a[tag=portsound] at @s run playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1 0
execute as @a[tag=portsound] at @s run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ .3 0
execute as @a[tag=portsound] at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1 0
execute as @a[tag=portsound] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 0.8
tag @a[tag=portsound] remove portsound

execute as @a[tag=portsound2] at @s run playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 0.5 0.8
execute as @a[tag=portsound2] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.3 1.6
execute as @a[tag=portsound2] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 0.8
execute as @a[tag=portsound2] at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1 0
tag @a[tag=portsound2] remove portsound2

tag @a[tag=!spiritworld,tag=spiritworldt] add portsound
tag @a[tag=spiritworld,tag=!spiritworldt] add portsound2

tag @a[tag=spirlob] add spiritworldt2
tag @a[tag=spiritworld] add spiritworldt
tag @a[tag=!spiritworld] remove spiritworldt
tag @a[tag=!spiritworld,tag=spiritworldt2] add spiritworldt
tag @a[tag=!spiritworld,tag=spiritworldt2] remove spiritworldt2


#execute as @e[tag=totem] at @s run tp @s ~ ~ ~ ~ ~

#run game
function game:game/rungame

#remove resistance
effect clear @e[tag=resremove] minecraft:resistance
tag @e[tag=resremove] remove resremove

#spirit world
tag @a[x=69,y=38,z=-30,distance=30..] remove spiritworld
execute as @a[x=69,y=38,z=-30,distance=..30] at @s run function game:game/spiritrealm

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

#random character
execute as @a run scoreboard players add @r ranchar 1
scoreboard players remove @a[scores={ranchar=7..}] ranchar 6
scoreboard players remove @a[scores={ranchar=7..}] ranchar 6

#menu
execute as @e[tag=charmask] at @s if entity @p[distance=..5] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=charmask] at @s unless entity @p[distance=..5] run tp @s ~ ~ ~ facing 1014 12 1007

scoreboard players add @e[scores={map=0..}] randommap 1
scoreboard players set @e[scores={randommap=7..}] randommap 1

function game:game/menu/portals

#bow score reset
scoreboard players set @a bowshot 0

#carrot on a stick
execute as @a[gamemode=adventure,tag=ingame,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] at @s run function game:spells/manaup
item replace entity @a[gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick

#menu
execute unless entity @e[scores={Time=1..}] if entity @e[scores={mapcdelay=0}] if block -93 41 66 minecraft:lever[face=wall,powered=true,facing=north] run function game:game/menu/mapnext
execute unless entity @e[scores={Time=1..}] if entity @e[scores={mapcdelay=0}] if block -87 41 60 lever[face=wall,powered=true,facing=west] run function game:game/menu/mapback

scoreboard players remove @e[scores={restartcool=1..}] restartcool 1

scoreboard players remove @e[scores={mapcdelay=1..}] mapcdelay 1
execute as @e[scores={mapcdelay=1}] run function game:game/menu/levreset

execute if block -89 40 65 minecraft:polished_blackstone_button[face=wall,powered=true,facing=west] run scoreboard players set @e[scores={map=0..}] startdelay 145
execute if block -88 40 64 minecraft:polished_blackstone_button[face=wall,powered=true,facing=north] run scoreboard players set @e[scores={map=0..}] startdelay 145
execute as @e[scores={startdelay=1..}] run function game:game/menu/startdelay

execute if entity @e[scores={startdelay=0}] run setblock -88 41 65 minecraft:air
execute if entity @e[scores={startdelay=0}] run setblock -89 40 65 minecraft:polished_blackstone_button[face=wall,powered=false,facing=west]
execute if entity @e[scores={startdelay=0}] run setblock -88 40 64 minecraft:polished_blackstone_button[face=wall,powered=false,facing=north]

#discord
tellraw @a[tag=discord] [{"text":"["},{"text":"!!!","color":"red"},{"text":"]"},{"text":" CLICK HERE FOR DISCORD","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click Me :)"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/6xatFYH"}}]
tag @a remove discord

#patch notes
tellraw @a[tag=notesclick] [{"text":"["},{"text":"!!!","color":"red"},{"text":"]"},{"text":" CLICK HERE FOR PATCH NOTES","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Click Me :)"}]},"clickEvent":{"action":"open_url","value":"https://pastebin.com/LEYiV4pV"}}]
tag @a remove notesclick

#tournaments
tellraw @a[tag=tourn1] [{"text":"The first ever official Rogues 2 tournament! Many more to come <3"}]
tag @a remove tourn1

tellraw @a[tag=t1win3] [{"text":"Beld the bald"}]
tag @a remove t1win3

tellraw @a[tag=t1win2] [{"text":"God"}]
tag @a remove t1win2

tellraw @a[tag=t1win1] [{"text":"A king emerges"}]
tag @a remove t1win1

#title area
clear @a[x=-145,y=23,z=-45,distance=..20,gamemode=adventure]

#tutorial
execute as @a[scores={tutorialtime=1..}] at @s run function game:players/tutorial

#lore
effect give @a[tag=lore1] blindness 10 0 true
tellraw @a[tag=lore1] {"text":"\n\nWhile souls cross over, they pass just by the world of dead. Mischievous spirits play with these lost souls, grabbing them up and returning them to the spirit realm.\n\nIn legend, the life lived by a soul can be understood by which spirit is chosen to return it.\n\nAs they vigorously fight, sometimes souls touch the spirits many times. Eventually, however, every soul is returned, when the world finally decides what spirit should be the guild."}
tag @a remove lore1

#reset scores
scoreboard players set @a damageTaken 0
scoreboard players set @a 10 10

effect clear @a minecraft:bad_omen

scoreboard players add @e[tag=turoial_view] t1 1
kill @e[tag=turoial_view,scores={t1=800..}]

#
#execute as @a[tag=water_remove_target] at @s run function game:test2