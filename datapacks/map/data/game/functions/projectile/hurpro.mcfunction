tag @e remove gethit

tag @a remove isthrow

scoreboard players operation @a playerID -= @s playerID
tag @a[scores={playerID=0}] add isthrow
scoreboard players operation @a playerID += @s playerID

execute as @s at @s run tp @s ^ ^ ^.15
execute as @s at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s at @s run tp @s ^ ^ ^.15
execute as @s at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s[scores={hurpower=2..},tag=in] at @s run tp @s ^ ^ ^.28
execute as @s[scores={hurpower=2..}] at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s[scores={hurpower=3..},tag=in] at @s run tp @s ^ ^ ^.24
execute as @s[scores={hurpower=3..}] at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s[scores={hurpower=4..},tag=in] at @s run tp @s ^ ^ ^.21
execute as @s[scores={hurpower=4..}] at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s[scores={hurpower=5..},tag=in] at @s run tp @s ^ ^ ^.19
execute as @s[scores={hurpower=5..}] at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s[scores={hurpower=6..},tag=in] at @s run tp @s ^ ^ ^.17
execute as @s[scores={hurpower=6..}] at @s positioned ~ ~1.5 ~ run function game:inblock

execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.15
execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run function game:inblock
execute as @s[tag=!in] at @s run tp @s ^ ^ ^-.15

execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run tag @a[tag=hittest,distance=..1.2] add gethit

#execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run say @e[distance=..1.5]

tag @a[scores={shield=1..}] remove gethit
tag @a[scores={Invul=1..}] remove gethit

execute as @s[tag=!in] at @s positioned ~ ~1.5 ~ run scoreboard players set @e[tag=gethit] glowing 35

execute as @s[tag=!in] at @s run effect give @e[tag=!isthrow,tag=gethit] instant_damage
execute as @s[tag=!in] at @s run effect give @e[tag=!isthrow,tag=gethit] resistance 1 10 true
execute as @s[tag=!in] at @s run tag @e[tag=!isthrow,tag=gethit] add resremove

execute as @e[tag=gethit,type=!player] store result score @s healthreal run data get entity @s Health
execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player] healthreal 3
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player] healthreal 4
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player] healthreal 5
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player] healthreal 6
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player] healthreal 7
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @e[tag=gethit,type=!player] healthreal 8
execute as @e[tag=gethit,type=!player] at @s run execute store result entity @s Health double 1 run scoreboard players get @s healthreal

execute as @s[tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .3 .8 .3 2 40 force
execute as @s[tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit] at @s run playsound minecraft:entity.player.hurt master @a
execute as @s[tag=!in] at @s run execute as @a[tag=gethit] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 1.1
execute as @s[tag=!in] at @s run execute as @a[tag=gethit] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 .8

tag @a[tag=!isthrow,tag=gethit] add hasres
tag @a[tag=!isthrow,tag=gethit,scores={manaboost=..0},tag=!totemres] remove hasres

execute as @s[scores={hurpower=1},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-3"}'}
execute as @s[scores={hurpower=2},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-4"}'}
execute as @s[scores={hurpower=3},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[scores={hurpower=4},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}
execute as @s[scores={hurpower=5},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-7"}'}
execute as @s[scores={hurpower=6},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=!hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-8"}'}
execute as @s[scores={hurpower=3},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-4"}'}
execute as @s[scores={hurpower=4},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[scores={hurpower=5},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}
execute as @s[scores={hurpower=6},tag=!in] at @s run execute as @a[tag=!isthrow,tag=gethit,tag=hasres] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-7"}'}


execute as @s[scores={hurpower=1},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit] healthshow 3
execute as @s[scores={hurpower=2},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit] healthshow 4
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=!hasres] healthshow 5
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=!hasres] healthshow 6
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=!hasres] healthshow 7
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=!hasres] healthshow 8
execute as @s[scores={hurpower=3},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=hasres] healthshow 4
execute as @s[scores={hurpower=4},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=hasres] healthshow 5
execute as @s[scores={hurpower=5},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=hasres] healthshow 6
execute as @s[scores={hurpower=6},tag=!in] at @s run scoreboard players remove @a[tag=!isthrow,tag=gethit,tag=hasres] healthshow 7

execute as @s[tag=!in] at @s run effect clear @e[tag=gethit] minecraft:levitation
execute as @s[tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 0 true
execute as @s[scores={hurpower=1},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 0 true
execute as @s[scores={hurpower=2},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 1 true
execute as @s[scores={hurpower=3},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 2 true
execute as @s[scores={hurpower=4},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 3 true
execute as @s[scores={hurpower=5},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 4 true
execute as @s[scores={hurpower=6},tag=!in] at @s run effect give @e[tag=gethit] minecraft:levitation 1 5 true

execute as @s[tag=!in] at @s run playsound minecraft:block.crop.break master @a ~ ~ ~ 1 0
execute as @s[tag=!in] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
execute as @s[tag=!in] at @s run playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0

execute as @s[tag=!in] at @s run particle minecraft:firework ~ ~1.5 ~ .6 .6 .6 .15 30 force

kill @s[tag=!in]

scoreboard players add @s stepcount 1

kill @s[scores={stepcount=140..}]

tag @a remove isthrow