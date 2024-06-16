#
execute as @a run attribute @s minecraft:generic.movement_speed base set .1

#remove res
effect clear @s[tag=nores] resistance
tag @s remove nores

#remove lev
scoreboard players remove @s[scores={nolev=0..}] nolev 1
effect clear @s[scores={nolev=0}] levitation

#teams
team join noColide @s[team=!noColide,tag=spiritworld]
team leave @s[team=noColide,tag=!spiritworld]

#cast spell
execute as @s[scores={press=1..,pressdelay=..0}] at @s run function game:spells/click

#respawn
execute as @s[scores={respawn=0..}] at @s run function game:players/respawn 

#active
execute as @s[x=-35,y=4,z=6,distance=20..,gamemode=!spectator] at @s run function game:characters/active

#mana
scoreboard players add @s[gamemode=adventure,scores={Mana=..14}] manaT 1
scoreboard players add @s[scores={manaT=20..,Mana=..14}] Mana 1
execute as @s[scores={manaT=20..}] at @s run function game:spells/manaup
scoreboard players set @s[scores={manaT=20..}] manaT 0
scoreboard players set @s[scores={Mana=..0}] Mana 0

#bow count and weapon timer
scoreboard players remove @s[scores={wtimer=0..}] wtimer 1
scoreboard players set @s[scores={btimer=4..}] btimer 0

#force manaup
execute as @s[scores={wtimer=0}] at @s run function game:spells/manaup
execute as @s[scores={btimer=0}] at @s run function game:spells/manaup

scoreboard players set @s[scores={btimer=0}] btimer -1

#weapons
execute as @s[scores={wtimer=0}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ .5 0
execute as @s[scores={wtimer=0}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0
execute as @s[scores={wtimer=0}] at @s run particle minecraft:falling_dust{block_state:"minecraft:gray_stained_glass"} ~ ~1 ~ .3 .5 .3 .3 20
clear @s[scores={wtimer=0}] wooden_sword

#bows
item replace entity @s[scores={btimer=1..}] inventory.0 with arrow
clear @s[scores={btimer=0}] arrow
clear @s[scores={btimer=0,class=5..}] bow
clear @s[scores={btimer=0,class=..3}] bow
scoreboard players set @s[scores={btimer=0}] btimer -1

scoreboard players remove @s glowingt 1
scoreboard players operation @s glowingt -= @s glowing
execute as @s[scores={glowingt=1..}] run scoreboard players operation @s glowing = @s glowingt
scoreboard players operation @s glowingt = @s glowing

scoreboard players set @s[scores={glowing=400..}] glowing 0
scoreboard players set @s[scores={glowing=400..}] glowingt 0

scoreboard players remove @s[scores={particles=1..}] particles 1
scoreboard players remove @s glowing 1
scoreboard players remove @s[scores={invis=0..}] invis 1
scoreboard players remove @s[scores={FBreload=1..}] FBreload 1
scoreboard players remove @s[scores={pressdelay=1..}] pressdelay 1
scoreboard players add @s pressdelay 0

#Fire
tag @s add notinfire
execute at @s if block ~ ~-1 ~ minecraft:magma_block run tag @s remove notinfire
execute at @s if block ~ ~ ~ lava run tag @s remove notinfire
execute at @s if block ~.48 ~ ~ #fire run tag @s remove notinfire
execute at @s if block ~-.48 ~ ~ #fire run tag @s remove notinfire
execute at @s if block ~ ~ ~.48 #fire run tag @s remove notinfire
execute at @s if block ~ ~ ~-.48 #fire run tag @s remove notinfire
execute at @s if block ~.48 ~1 ~ #fire run tag @s remove notinfire
execute at @s if block ~-.48 ~1 ~ #fire run tag @s remove notinfire
execute at @s if block ~ ~1 ~.48 #fire run tag @s remove notinfire
execute at @s if block ~ ~1 ~-.48 #fire run tag @s remove notinfire
tag @s[scores={Invul=1..}] add notinfire
tag @s[scores={shield=1..}] add notinfire
scoreboard players add @s[tag=!notinfire] fire 1
scoreboard players set @s[tag=!notinfire] fireT 0
scoreboard players set @s[tag=notinfire] fire 0
execute as @s[scores={fire=2},gamemode=adventure] run function game:players/firehit
effect give @s[scores={fire=2},gamemode=adventure] slowness 1 1 true
scoreboard players set @s[scores={fire=10..}] fire 0
execute at @s if block ~ ~ ~ lava run scoreboard players set @s[scores={fire=4..}] fire 0

execute store result score @s fire_time run data get entity @s Fire 1
execute if score @s fire_time > @s fire_time_t run scoreboard players set @s[scores={fire_time=10..140}] fire_time_effect 61
execute if score @s fire_time > @s fire_time_t run scoreboard players set @s[scores={fire_time=140..}] fire_time_effect 81
execute if score @s fire_time > @s fire_time_t run scoreboard players set @s invisoff 6
scoreboard players operation @s fire_time_t = @s fire_time
scoreboard players remove @s[scores={fire_time_t=2..}] fire_time_t 1
scoreboard players remove @s fire_time_effect 1
execute as @s at @s if block ~ ~ ~ water run scoreboard players set @s fire_time_effect 0
tag @s remove nofire
tag @s[scores={fire_time_effect=..0}] add nofire
tag @s[scores={Invul=1..}] add nofire
tag @s[scores={shield=1..}] add nofire
scoreboard players add @s[tag=!nofire] fireT 1
scoreboard players set @s[tag=nofire] fireT 0
scoreboard players set @s[tag=nofire] fire_time_effect 0
scoreboard players set @s[scores={Invul=1..}] fire_time_effect 0
scoreboard players set @s[scores={shield=1..}] fire_time_effect 0
execute as @s[scores={fireT=10},gamemode=adventure] run function game:players/firehit
scoreboard players set @s[scores={fireT=20..}] fireT 0

effect clear @s[scores={firehit=0,poison=..0,poison2=..0}] slowness
scoreboard players remove @s[scores={firehit=0..}] firehit 1

item replace entity @s[scores={fire_time_effect=80}] hotbar.6 with minecraft:carrot
item replace entity @s[scores={fire_time_effect=60}] hotbar.6 with minecraft:carrot
clear @s[scores={fire_time_effect=..0}] carrot

execute as @s[scores={fireT=1},gamemode=adventure] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=5},gamemode=adventure] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=9},gamemode=adventure] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=13},gamemode=adventure] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=17},gamemode=adventure] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force

execute as @s[scores={fireT=2},gamemode=adventure] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=6},gamemode=adventure] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=10},gamemode=adventure] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=14},gamemode=adventure] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=18},gamemode=adventure] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force

execute as @s[scores={fireT=3},gamemode=adventure] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=7},gamemode=adventure] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=11},gamemode=adventure] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=15},gamemode=adventure] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=19},gamemode=adventure] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force

#poison
execute as @s[scores={poison=40,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison=30,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison=20,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison=10,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
scoreboard players remove @s[scores={poison=1..}] poison 1

#poison2
execute as @s[scores={poison2=75,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison2=60,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison2=45,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison2=30,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
execute as @s[scores={poison2=15,Invul=..0,shield=..0},gamemode=adventure] run function game:players/firehit
scoreboard players remove @s[scores={poison2=1..}] poison2 1

#health
#scoreboard players set @s[x=-35,y=4,z=6,distance=..40] healthshow 100
scoreboard players add @s healthshow 0
execute as @s[gamemode=adventure,scores={respawn=..0}] at @s run function game:players/health

#stealth particles
execute as @s[scores={invis=..0}] at @s run function game:players/movepart

#Invul
scoreboard players remove @s Invul 1

#Effect immune (Coming from portals)
scoreboard players remove @s[scores={effect_immune=0..}] effect_immune 1