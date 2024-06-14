setblock -89 40 65 air
setblock -88 40 64 air

execute as @s[scores={startdelay=1}] run function game:game/start

execute if entity @e[scores={restartcool=1..}] run title @a[x=-87,y=40,z=65,distance=..10] actionbar {"text":"! Game Resetting !","color":"white","bold":true}
execute if entity @e[scores={restartcool=1..}] run scoreboard players set @s startdelay 1

execute if block -88 41 65 minecraft:polished_blackstone_button[face=floor,powered=true,facing=east] run scoreboard players set @s startdelay 1
execute if block -88 41 65 minecraft:polished_blackstone_button[face=floor,powered=true,facing=east] run title @a[x=-87,y=40,z=65,distance=..10] actionbar {"text":"! Cancelled !","color":"white","bold":true}
execute if block -88 41 65 minecraft:polished_blackstone_button[face=floor,powered=true,facing=east] run title @a title {"text":"","color":"white","bold":true}
execute if block -88 41 65 minecraft:polished_blackstone_button[face=floor,powered=true,facing=east] run title @a subtitle {"text":"","color":"white","bold":true}
setblock -88 41 65 minecraft:polished_blackstone_button[face=floor,powered=false,facing=east] replace

execute if entity @e[scores={Time=1..}] run title @a[x=-87,y=40,z=65,distance=..10] actionbar {"text":"! Game in progress. !","color":"white","bold":true}
execute if entity @e[scores={Time=1..}] run scoreboard players set @s startdelay 1

execute unless entity @a[tag=ready] run title @a[x=-87,y=40,z=65,distance=..10] actionbar {"text":"! Requires a 'ready' player. !","color":"white","bold":true}
execute unless entity @a[tag=ready] run scoreboard players set @s startdelay 1

execute as @s[scores={startdelay=140}] run title @a times 10 50 10
execute as @s[scores={startdelay=140}] run title @a title {"text":"Portal Opening"}
execute as @s[scores={startdelay=140}] run title @a subtitle {"text":"5"}
execute as @s[scores={startdelay=140}] run execute as @a at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0

execute as @s[scores={startdelay=120}] run title @a times 10 50 10
execute as @s[scores={startdelay=120}] run title @a title {"text":"Portal Opening"}
execute as @s[scores={startdelay=120}] run title @a subtitle {"text":"4","color":"yellow"}
execute as @s[scores={startdelay=120}] run execute as @a at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.2

execute as @s[scores={startdelay=100}] run title @a times 10 50 10
execute as @s[scores={startdelay=100}] run title @a title {"text":"Portal Opening"}
execute as @s[scores={startdelay=100}] run title @a subtitle {"text":"3","color":"gold"}
execute as @s[scores={startdelay=100}] run execute as @a at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.4

execute as @s[scores={startdelay=80}] run title @a times 10 50 10
execute as @s[scores={startdelay=80}] run title @a title {"text":"Portal Opening"}
execute as @s[scores={startdelay=80}] run title @a subtitle {"text":"2","color":"red"}
execute as @s[scores={startdelay=80}] run execute as @a at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.6

execute as @s[scores={startdelay=60}] run title @a times 10 50 10
execute as @s[scores={startdelay=60}] run title @a title {"text":"Portal Opening"}
execute as @s[scores={startdelay=60}] run title @a subtitle {"text":"1","color":"dark_red"}
execute as @s[scores={startdelay=60}] run execute as @a at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.8

execute as @s[scores={startdelay=50}] run effect give @a[tag=ready] blindness 5 0 true
execute as @s[scores={startdelay=40}] run title @a title {"text":"Worlds Collide","color":"dark_aqua"}
execute as @s[scores={startdelay=40}] run title @a subtitle {"text":""}
execute as @s[scores={startdelay=45}] run execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 2
execute as @s[scores={startdelay=30}] run execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 0

scoreboard players remove @s startdelay 1