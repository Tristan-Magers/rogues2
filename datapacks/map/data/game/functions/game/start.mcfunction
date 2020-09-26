scoreboard objectives remove Score
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score

execute as @e[scores={map=1}] run function game:game/maps/map1/spawn
execute as @e[scores={map=2}] run function game:game/maps/map2/spawn
execute as @e[scores={map=3}] run function game:game/maps/map3/spawn
execute as @e[scores={map=4}] run function game:game/maps/map4/spawn
execute as @e[scores={map=5}] run function game:game/maps/map5/spawn

time set 0
effect clear @a

tag @a remove spirlob

scoreboard players add @a nocap 0

scoreboard players add @a wtimer 0
scoreboard players add @a btimer 0

scoreboard players add @a class 0
scoreboard players set @a[scores={class=0}] class 1

scoreboard players set @a cooljp 0
scoreboard players set @a coolblack 0

scoreboard players set @a boostpart 0

scoreboard players set @a manaboost 0

scoreboard players set @a trident 0

scoreboard players set @a spiderwall 0

scoreboard players set @a shield -1
scoreboard players set @a totemres 0
tag @a remove totemres

scoreboard players set @a cavekill 0
scoreboard players set @a spidercount 0
scoreboard players set @a scounttest 0

scoreboard players set @a plutospike -1
scoreboard players set @a plutoregen -1

scoreboard players set @a dummylook -1
scoreboard players set @a portal -4

scoreboard players set @a presstut 0
scoreboard players set @a pointtut 0
scoreboard players set @a scoretut 0
scoreboard players set @a respawn -100

scoreboard players set @a soulheal 0
scoreboard players set @a points 0
scoreboard players set @a healthshow 100
scoreboard players set @a manaT 20
scoreboard players set @a Mana -1
scoreboard players set @a Mana -1
scoreboard players set @a invisoff 80
scoreboard players set @a noname 1
scoreboard players set @a Invul 160
effect give @a minecraft:resistance 8 4 true
effect give @a minecraft:weakness 8 4 true
effect give @a minecraft:fire_resistance 8 0 true
effect give @a minecraft:blindness 2

clear @a
title @a times 0 25 10

scoreboard objectives remove Score
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score

scoreboard players set @a Score 0

scoreboard players set Time Score 270
scoreboard players set @e[name="Time Left"] Time 5400
scoreboard players set @e[name="Time Left"] TimeS 20

gamemode adventure @a

tellraw @a [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] 10 seconds of Invulnerablity"}]
tellraw @a [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] Stand on points to collect "},{"bold":"true","color":"aqua","text":"SOULS"},{"text":"."}]

kill @e[tag=soulsend]

tag @e[scores={Time=-100..}] add noscore