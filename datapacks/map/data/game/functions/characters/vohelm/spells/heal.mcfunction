scoreboard players add @s healthshow 2
scoreboard players remove @s Mana 6
scoreboard players set @s goldenap 0
effect give @s minecraft:speed 4 0 true
effect give @s minecraft:absorption 900 9 true
effect clear @s minecraft:regeneration
function game:spells/manaup

#scoreboard players set @e[gamemode=adventure,distance=0.1..90,scores={respawn=..10,glowing=..10},limit=10,sort=nearest] glowing 10

#execute as @a[gamemode=adventure,distance=0.1..90,scores={respawn=..10},limit=10,sort=nearest] at @s run playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 1 0.4
#execute as @a[gamemode=adventure,distance=0.1..90,scores={respawn=..10},limit=10,sort=nearest] at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 2
#execute as @a[gamemode=adventure,distance=0.1..90,scores={respawn=..10},limit=10,sort=nearest] at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 0
#title @a[gamemode=adventure,distance=0.1..90,scores={respawn=..10},limit=10,sort=nearest] times 0 15 15
#title @a[gamemode=adventure,distance=0.1..90,scores={respawn=..10},limit=10,sort=nearest] title {"text":"Location Revealed"}