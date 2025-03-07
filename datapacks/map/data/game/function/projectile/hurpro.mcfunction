tag @e remove gethit

tag @a remove isthrow

#find throwing player (to prevent damage and col with that player)
scoreboard players operation @a playerID -= @s playerID
tag @a[scores={playerID=0}] add isthrow
scoreboard players operation @a playerID += @s playerID

execute as @s[scores={hurpower=1..}] at @s run tp @s ^ ^ ^.15
execute as @s[scores={hurpower=1..}] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

scoreboard players add @s stepcount 1

#do base movement twice for better detection
execute as @s[scores={hurpower=1..},tag=in] at @s run tp @s ^ ^ ^.15
execute as @s[scores={hurpower=1..},tag=in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=1..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

scoreboard players add @s stepcount 1

execute as @s[scores={hurpower=2..},tag=in] at @s run tp @s ^ ^ ^.28
execute as @s[scores={hurpower=2..},tag=in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=2..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

scoreboard players add @s stepcount 1

execute as @s[scores={hurpower=3..},tag=in] at @s run tp @s ^ ^ ^.24
execute as @s[scores={hurpower=3..},tag=in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=3..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

scoreboard players add @s stepcount 1

execute as @s[scores={hurpower=4..},tag=in] at @s run tp @s ^ ^ ^.21
execute as @s[scores={hurpower=4..},tag=in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=4..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

scoreboard players add @s stepcount 1

execute as @s[scores={hurpower=5..},tag=in] at @s run tp @s ^ ^ ^.19
execute as @s[scores={hurpower=5..},tag=in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=5..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

scoreboard players add @s stepcount 1

execute as @s[scores={hurpower=6..},tag=in] at @s run tp @s ^ ^ ^.17
execute as @s[scores={hurpower=6..},tag=in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.3 ~-.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~.2 ~1.7 ~-.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~.2 run function game:inblock
execute as @s[scores={hurpower=6..,stepcount=5..},tag=in] at @s positioned ~-.2 ~1.7 ~-.2 run function game:inblock

#step back after hit
tag @s[tag=!in] add hit
execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.15
execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.15
tag @s[tag=hit] remove in

execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run tag @a[tag=hittest,distance=..1.2] add gethit

#execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run say @e[distance=..1.5]

tag @a remove has_shield
tag @a[scores={shield=1..}] add has_shield
tag @a[scores={Invul=1..}] remove gethit

#execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run scoreboard players set @e[tag=gethit] glowing 35

execute as @s[tag=!in] at @s run effect give @e[tag=!isthrow,tag=gethit] instant_damage
execute as @s[tag=!in] at @s run effect give @e[tag=!isthrow,tag=gethit] resistance 1 10 true
execute as @s[tag=!in] at @s run tag @e[tag=!isthrow,tag=gethit] add resremove

tag @e[tag=gethit,type=!player] add ded

execute as @e[tag=gethit,type=!player,tag=!arena_dummy] store result score @s healthreal run data get entity @s Health
execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player,tag=!arena_dummy] healthreal 2
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player,tag=!arena_dummy] healthreal 3
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player,tag=!arena_dummy] healthreal 4
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player,tag=!arena_dummy] healthreal 5
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player,tag=!arena_dummy] healthreal 6
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player,tag=!arena_dummy] healthreal 7
execute as @e[tag=gethit,type=!player,tag=!arena_dummy] at @s run execute store result entity @s Health double 1 run scoreboard players get @s healthreal

execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players add @e[tag=gethit,tag=arena_dummy] t3 2
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players add @e[tag=gethit,tag=arena_dummy] t3 3
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players add @e[tag=gethit,tag=arena_dummy] t3 4
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players add @e[tag=gethit,tag=arena_dummy] t3 5
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players add @e[tag=gethit,tag=arena_dummy] t3 6
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players add @e[tag=gethit,tag=arena_dummy] t3 7
execute as @s[tag=!in] at @s run scoreboard players set @e[tag=gethit,tag=arena_dummy] t4 0

execute as @s[tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit] at @s run particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ .3 .8 .3 2 40 force
execute as @s[tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit] at @s run playsound minecraft:entity.player.hurt master @a
execute as @s[tag=!in] at @s run execute as @a[tag=gethit] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 1.1
execute as @s[tag=!in] at @s run execute as @a[tag=gethit] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 .8

tag @a[tag=!has_shield,tag=!isthrow,tag=gethit] add hasres
tag @a[tag=!has_shield,tag=!isthrow,tag=gethit,scores={manaboost=..0},tag=!totemres] remove hasres

tag @a remove in_project
tag @a[scores={class=6,notele=1..}] add in_project

execute as @s[scores={hurpower=1},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-2"}'}
execute as @s[scores={hurpower=2},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-3"}'}
execute as @s[scores={hurpower=3},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-4"}'}
execute as @s[scores={hurpower=4},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[scores={hurpower=5},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}
execute as @s[scores={hurpower=6},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-7"}'}
execute as @s[scores={hurpower=4},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-4"}'}
execute as @s[scores={hurpower=5},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[scores={hurpower=6},tag=!in] at @s run execute as @a[tag=!has_shield,tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}

execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 2
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 3
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 4
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit,tag=!hasres] healthshow 5
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit,tag=!hasres] healthshow 6
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit,tag=!hasres] healthshow 7
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit,tag=hasres] healthshow 4
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit,tag=hasres] healthshow 5
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @a[tag=!in_project,tag=!has_shield,tag=!isthrow,tag=gethit,tag=hasres] healthshow 6
execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players remove @a[tag=in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 1
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players remove @a[tag=in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 2
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players remove @a[tag=in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 2
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @a[tag=in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 3
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @a[tag=in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 3
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @a[tag=in_project,tag=!has_shield,tag=!isthrow,tag=gethit] healthshow 4

execute as @s[tag=!in] at @s run effect clear @e[tag=gethit] minecraft:levitation
execute as @s[tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 0 true
execute as @s[scores={hurpower=1},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 3 true
execute as @s[scores={hurpower=2},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 3 true
execute as @s[scores={hurpower=3},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 3 true
execute as @s[scores={hurpower=4},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 4 true
execute as @s[scores={hurpower=5},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 4 true
execute as @s[scores={hurpower=6},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 5 true

execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players set @e[tag=gethit] nolev 11
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players set @e[tag=gethit] nolev 12
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players set @e[tag=gethit] nolev 13
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players set @e[tag=gethit] nolev 14
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players set @e[tag=gethit] nolev 16

execute as @s[scores={hurpower=1..},tag=!in] at @s run tag @a[tag=gethit] add end_project

execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players set @e[tag=gethit] glowing 10
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players set @e[tag=gethit] glowing 15
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players set @e[tag=gethit] glowing 20
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players set @e[tag=gethit] glowing 25
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players set @e[tag=gethit] glowing 30
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players set @e[tag=gethit] glowing 33

execute as @s[scores={hurpower=1..6},tag=!in] at @s run scoreboard players set @a[tag=gethit] fireheal -120
execute as @s[scores={hurpower=1..6},tag=!in] at @s run scoreboard players set @a[tag=gethit] plutoregen -1

execute as @s[scores={hurpower=1..6},tag=!in] at @s run clear @a[tag=gethit] golden_apple
execute as @s[scores={hurpower=1..6},tag=!in] at @s run clear @a[tag=gethit] potion[custom_data={StormEnergy:1}]

execute as @s[tag=!in] at @s run playsound minecraft:block.crop.break master @a ~ ~ ~ 1 0
execute as @s[tag=!in] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
execute as @s[tag=!in] at @s run playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0

execute as @s[tag=!in] at @s run particle minecraft:crit ~ ~1.5 ~ 0.1 0.1 0.1 0 5 force
execute as @s[tag=!in] at @s run particle minecraft:firework ~ ~1.5 ~ .6 .6 .6 .15 25 force
execute as @s[tag=!in] at @s run scoreboard players set @e[distance=..3,name=web] move 1046

kill @s[tag=!in]

scoreboard players add @s stepcount 1

kill @s[scores={stepcount=900..}]

tag @a remove isthrow