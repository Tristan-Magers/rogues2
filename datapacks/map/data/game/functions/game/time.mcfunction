scoreboard players remove @s[scores={TimeS=1..}] TimeS 1
execute as @s[scores={TimeS=0,Time=1..}] at @s run scoreboard players remove Time Score 1
scoreboard players set @s[scores={TimeS=0}] TimeS 20

execute as @s[scores={Time=2..}] at @s unless entity @a[tag=ingame,tag=!lobby,gamemode=!creative] run tellraw @a {"text":"No players, game has ended"}
execute as @s[scores={Time=2..}] at @s unless entity @a[tag=ingame,tag=!lobby,gamemode=!creative] run scoreboard players set @s Time 1
scoreboard players remove @s[scores={Time=0..}] Time 1

#gamedone
execute as @s[scores={Time=0}] at @s run function game:game/testwin
execute as @s[scores={Time=..-1}] at @s run function game:game/gamedone

execute as @s[scores={Time=5380}] at @s run execute as @e[scores={map=1}] run function game:game/maps/map1/start
execute as @s[scores={Time=5380}] at @s run execute as @e[scores={map=2}] run function game:game/maps/map2/start
execute as @s[scores={Time=5380}] at @s run execute as @e[scores={map=3}] run function game:game/maps/map3/start
execute as @s[scores={Time=5380}] at @s run execute as @e[scores={map=4}] run function game:game/maps/map4/start
execute as @s[scores={Time=5380}] at @s run execute as @e[scores={map=5}] run function game:game/maps/map5/start
execute as @s[scores={Time=5374}] at @s run execute as @e[scores={map=5}] run function game:game/maps/map5/start

execute as @s[scores={Time=1..}] at @s run scoreboard players add @a presstut 1
execute as @s[scores={Time=1..}] at @s run scoreboard players add @a[scores={points=1..,Score=0}] scoretut 1
execute as @s[scores={Time=1..}] at @s run scoreboard players add @a[scores={Score=0}] pointtut 1

execute as @s[scores={Time=1..}] at @s run tellraw @a[scores={presstut=400}] [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] To cast spells, "},{"bold":"true","color":"gold","text":"RIGHT-CLICK"},{"text":" with them."}]
execute as @s[scores={Time=1..}] at @s run tellraw @a[scores={pointtut=600}] [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] Stand on points to collect "},{"bold":"true","color":"aqua","text":"SOULS"},{"text":"."}]
execute as @s[scores={Time=1..}] at @s run tellraw @a[scores={scoretut=250}] [{"text":"["},{"bold":"true","color":"red","text":"!!"},{"text":"] Score by reurning "},{"bold":"true","color":"aqua","text":"SOULS"},{"text":" to the "},{"bold":"true","color":"dark_aqua","text":"SPIRIT REALM"},{"text":" (portals)."}]

execute as @s[scores={Time=1..}] at @s run scoreboard players set @a[scores={presstut=400..}] presstut -300
execute as @s[scores={Time=1..}] at @s run scoreboard players set @a[scores={pointtut=600..}] pointtut 0
execute as @s[scores={Time=1..}] at @s run scoreboard players set @a[scores={scoretut=250..}] scoretut -300

execute as @s[scores={Time=5390}] at @s run title @a times 10 40 10
execute as @s[scores={Time=5390}] at @s run title @a title {"text":"Collect souls","color":"aqua"}
execute as @s[scores={Time=5390}] at @s run title @a subtitle {"text":"(glowing points)","color":"white"}

execute as @s[scores={Time=5340}] at @s run title @a times 10 40 10
execute as @s[scores={Time=5340}] at @s run title @a title {"text":"Return to Soul Realm","color":"gold"}
execute as @s[scores={Time=5340}] at @s run title @a subtitle {"text":"(the portals)","color":"white"}

execute as @s[scores={Time=5300}] at @s run title @a times 0 20 10

execute as @s[scores={Time=5398}] at @s run execute as @a at @s run particle minecraft:poof ~ ~1 ~ .2 .4 .2 .1 60 force
execute as @s[scores={Time=5395}] at @s run execute as @a at @s run effect give @a minecraft:blindness 1 2

#increase point amount
execute as @s[scores={Time=3600}] at @s run title @a times 0 25 10
execute as @s[scores={Time=1800}] at @s run title @a times 0 25 10
execute as @s[scores={Time=1200}] at @s run title @a times 0 25 10
execute as @s[scores={Time=300}] at @s run title @a times 0 25 10

execute as @s[scores={Time=3600}] at @s run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0
execute as @s[scores={Time=3560..3600}] at @s run title @a title {"text":"Twilight Intensifies","color":"dark_aqua"}
execute as @s[scores={Time=3560..3600}] at @s run title @a subtitle {"text":"More souls spawn on points","color":"blue"}

execute as @s[scores={Time=1800}] at @s run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0
execute as @s[scores={Time=1760..1800}] at @s run title @a title {"text":"Twilight Intensifies","color":"dark_aqua"}
execute as @s[scores={Time=1760..1800}] at @s run title @a subtitle {"text":"More souls spawn on points","color":"blue"}

scoreboard players set @e[name=point,tag=!stable] pointAmount 1
execute as @s[scores={Time=..3600}] at @s run scoreboard players set @e[name=point,tag=!stable] pointAmount 2
execute as @s[scores={Time=..1800}] at @s run scoreboard players set @e[name=point,tag=!stable] pointAmount 3

execute as @s[scores={Time=1200}] at @s run title @a title {"text":"One Minute Left","color":"dark_red"}
execute as @s[scores={Time=1200}] at @s run tellraw @a {"text":"One Minute Left","color":"red"}
execute as @s[scores={Time=300}] at @s run title @a title {"text":"15 Seconds Left","color":"dark_red"}
execute as @s[scores={Time=300}] at @s run tellraw @a {"text":"15 Seconds Left","color":"red"}

execute as @s[scores={Time=1200}] at @s run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~ .4 .8
execute as @s[scores={Time=300}] at @s run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~ .5 1.3

execute as @s[scores={Time=280}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 0.5
execute as @s[scores={Time=260}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 0.6
execute as @s[scores={Time=240}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.5 0.7
execute as @s[scores={Time=220}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.5 0.8
execute as @s[scores={Time=200}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.6 0.9
execute as @s[scores={Time=180}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.6 1
execute as @s[scores={Time=160}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.7 1.1
execute as @s[scores={Time=140}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.7 1.2
execute as @s[scores={Time=120}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.8 1.3
execute as @s[scores={Time=100}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.8 1.4
execute as @s[scores={Time=80}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.9 1.5
execute as @s[scores={Time=60}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.9 1.6
execute as @s[scores={Time=50}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.9 1.6
execute as @s[scores={Time=40}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 1.8
execute as @s[scores={Time=30}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 1.8
execute as @s[scores={Time=20}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 2
execute as @s[scores={Time=10}] at @s run execute as @a[tag=ingame] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 2


execute as @s[scores={Time=1..}] at @s run scoreboard players add @e[scores={map=2}] lavatick 1
execute as @s[scores={Time=1..}] at @s run scoreboard players add @e[scores={map=4}] lavatick 1