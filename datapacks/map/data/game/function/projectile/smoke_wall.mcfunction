#
scoreboard players add @s timer 1

execute as @s[scores={timer=1}] at @s run summon armor_stand ~ ~-4 ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Rotation:[45F,0F],Tags:["smoke_wall_vis"],ArmorItems:[{},{},{},{id:"minecraft:copper_ingot",count:1b}]}
execute as @s[scores={timer=1}] at @s run summon armor_stand ~ ~-3.5 ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["smoke_wall_vis"],ArmorItems:[{},{},{},{id:"minecraft:copper_ingot",count:1b}]}

#execute as @s[scores={timer=20..}] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force

kill @s[scores={timer=130..}]

execute as @s[scores={timer=20..}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~-0.5 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~ ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~0.5 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~1 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~1.5 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~2 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~2.5 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~3 ~ run effect give @a[distance=..1.2] slowness 1 0 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~3.5 ~ run effect give @a[distance=..1.2] slowness 1 0 true

execute as @s[scores={timer=20..}] at @s positioned ~ ~-1 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~-0.5 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~ ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~0.5 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~1 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~1.5 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~2 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~2.5 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~3 ~ run effect give @a[distance=..1.2] blindness 2 100 true
execute as @s[scores={timer=20..}] at @s positioned ~ ~3.5 ~ run effect give @a[distance=..1.2] blindness 2 100 true

execute as @s[scores={timer=20..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~-0.5 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~ ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~0.5 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~1 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~1.5 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~2 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~2.5 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~3 ~ run scoreboard players set @a[distance=..1.2] invisoff 8
execute as @s[scores={timer=20..}] at @s positioned ~ ~3.5 ~ run scoreboard players set @a[distance=..1.2] invisoff 8

#execute as @s[scores={timer=20..}] at @s positioned ~ ~-1 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~-0.5 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~ ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~0.5 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~1 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~1.5 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~2 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~2.5 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~3 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36
#execute as @s[scores={timer=20..}] at @s positioned ~ ~3.5 ~ run scoreboard players set @a[distance=..1.2,scores={poison2=..19}] poison2 36

execute as @s[scores={timer=1}] at @s positioned ~ ~1 ~ run playsound minecraft:entity.warden.dig master @a ~ ~ ~ 0.3 2
execute as @s[scores={timer=1}] at @s positioned ~ ~1 ~ run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 2
execute as @s[scores={timer=15}] at @s positioned ~ ~1 ~ run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0
execute as @s[scores={timer=10}] at @s positioned ~ ~1 ~ run playsound minecraft:entity.warden.attack_impact master @a ~ ~ ~ 0.4 0
execute as @s[scores={timer=120}] at @s positioned ~ ~1 ~ run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1.5