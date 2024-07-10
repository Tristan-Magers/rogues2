# get health
execute store result score @s t1 run data get entity @s Health 10

# find damage
scoreboard players set @s t2 0
scoreboard players set @s[scores={t1=9981..9990}] t2 1
scoreboard players set @s[scores={t1=9971..9980}] t2 2
scoreboard players set @s[scores={t1=9961..9970}] t2 3
scoreboard players set @s[scores={t1=9951..9960}] t2 4
scoreboard players set @s[scores={t1=9941..9950}] t2 5
scoreboard players set @s[scores={t1=9931..9940}] t2 6
scoreboard players set @s[scores={t1=9921..9930}] t2 7
scoreboard players set @s[scores={t1=9911..9920}] t2 8
scoreboard players set @s[scores={t1=9901..9910}] t2 9
scoreboard players set @s[scores={t1=9891..9900}] t2 10
scoreboard players set @s[scores={t1=9881..9890}] t2 11
scoreboard players set @s[scores={t1=9871..9880}] t2 12
scoreboard players set @s[scores={t1=9861..9870}] t2 13
scoreboard players set @s[scores={t1=9851..9860}] t2 14
scoreboard players set @s[scores={t1=9841..9850}] t2 15
scoreboard players set @s[scores={t1=9831..9840}] t2 16
scoreboard players set @s[scores={t1=9821..9830}] t2 17
scoreboard players set @s[scores={t1=9811..9820}] t2 18
scoreboard players set @s[scores={t1=9801..9810}] t2 19
scoreboard players set @s[scores={t1=9791..9800}] t2 20
scoreboard players set @s[scores={t1=9781..9790}] t2 21
scoreboard players set @s[scores={t1=9771..9780}] t2 22
scoreboard players set @s[scores={t1=9761..9770}] t2 23
scoreboard players set @s[scores={t1=9751..9760}] t2 24
scoreboard players set @s[scores={t1=9741..9750}] t2 25
scoreboard players set @s[scores={t1=9731..9740}] t2 26
scoreboard players set @s[scores={t1=9721..9730}] t2 27
scoreboard players set @s[scores={t1=9711..9720}] t2 28
scoreboard players set @s[scores={t1=9701..9710}] t2 29
scoreboard players set @s[scores={t1=9691..9700}] t2 30

#Fire
tag @s add notinfire

execute at @s if block ~.48 ~ ~ #fire run tag @s remove notinfire
execute at @s if block ~-.48 ~ ~ #fire run tag @s remove notinfire
execute at @s if block ~ ~ ~.48 #fire run tag @s remove notinfire
execute at @s if block ~ ~ ~-.48 #fire run tag @s remove notinfire
execute at @s if block ~.48 ~1 ~ #fire run tag @s remove notinfire
execute at @s if block ~-.48 ~1 ~ #fire run tag @s remove notinfire
execute at @s if block ~ ~1 ~.48 #fire run tag @s remove notinfire
execute at @s if block ~ ~1 ~-.48 #fire run tag @s remove notinfire

scoreboard players add @s[tag=!notinfire] fire 1
scoreboard players set @s[tag=!notinfire] fireT 0
scoreboard players set @s[tag=notinfire] fire 0
execute as @s[scores={fire=2}] run scoreboard players add @s t2 1
execute as @s[scores={fire=2}] at @s run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1
effect give @s[scores={fire=2}] slowness 1 1 true
scoreboard players set @s[scores={fire=10..}] fire 0
execute at @s if block ~ ~ ~ lava run scoreboard players set @s[scores={fire=4..}] fire 0

tag @s remove flame_arrow_hit
execute store result score @s fire_time run data get entity @s Fire 1
execute if score @s fire_time > @s fire_time_t as @s[scores={fire_time=100}] run tag @s add flame_arrow_hit
execute if score @s fire_time > @s fire_time_t run scoreboard players set @s[scores={fire_time=10..140}] fire_time_effect 41
execute if score @s fire_time > @s fire_time_t run scoreboard players set @s[scores={fire_time=140..}] fire_time_effect 101
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
execute as @s[scores={fireT=10}] run scoreboard players add @s t2 1
execute as @s[scores={fireT=10}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1
scoreboard players set @s[scores={fireT=20..}] fireT 0

scoreboard players remove @s[scores={firehit=0..}] firehit 1

execute as @s[scores={fireT=1}] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=5}] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=9}] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=13}] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force
execute as @s[scores={fireT=17}] run particle minecraft:large_smoke ~ ~0.2 ~ 0.22 0.1 0.22 0.02 1 force

execute as @s[scores={fireT=2}] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=6}] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=10}] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=14}] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force
execute as @s[scores={fireT=18}] run particle minecraft:lava ~ ~0.5 ~ 0.15 0.3 0.15 0.02 1 force

execute as @s[scores={fireT=3}] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=7}] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=11}] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=15}] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force
execute as @s[scores={fireT=19}] run particle minecraft:flame ~ ~0.8 ~ 0.2 0.4 0.2 0.02 2 force

scoreboard players add @s[tag=flame_arrow_hit] t2 1
scoreboard players set @s[tag=flame_arrow_hit,scores={t2=6..}] t2 6

#poison
execute as @s[scores={poison2=75}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1
execute as @s[scores={poison2=60}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1
execute as @s[scores={poison2=45}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1
execute as @s[scores={poison2=30}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1
execute as @s[scores={poison2=15}] run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 0.5 1

execute as @s[scores={poison2=75}] run scoreboard players add @s t2 1
execute as @s[scores={poison2=60}] run scoreboard players add @s t2 1
execute as @s[scores={poison2=45}] run scoreboard players add @s t2 1
execute as @s[scores={poison2=30}] run scoreboard players add @s t2 1
execute as @s[scores={poison2=15}] run scoreboard players add @s t2 1

scoreboard players remove @s[scores={poison2=1..}] poison2 1

#thorns
execute store success score @s t6 run effect clear @s minecraft:luck
scoreboard players add @s[scores={t6=1}] t7 1
execute as @s[scores={t7=2..}] at @s run playsound minecraft:entity.player.hurt master @a
scoreboard players add @s[scores={t7=2..}] t2 3
scoreboard players set @s[scores={t7=2..}] t7 0

# add to damage total
execute as @s[scores={t2=1..}] run scoreboard players operation @s t3 += @s t2
execute as @s[scores={t2=1..}] run scoreboard players set @s t4 0
# set name
data modify storage minecraft:macro input set value {"damage":"0"}
execute store result storage minecraft:macro input.damage int 1 run scoreboard players get @s t3
function game:game/arena_dummy_name_macro with storage minecraft:macro input

# Reset damage total after 3.5s
scoreboard players add @s[scores={t3=1..}] t4 1
scoreboard players set @s[scores={t4=34..}] t3 0
scoreboard players set @s[scores={t4=34..}] t5 0
scoreboard players set @s[scores={t4=34..}] t4 0

#scoreboard players add @s[scores={t3=1..}] t5 1
#scoreboard players set @s[scores={t5=120..}] t3 0
#scoreboard players set @s[scores={t5=120..}] t4 0
#scoreboard players set @s[scores={t5=120..}] t5 0

#
item replace entity @s armor.legs with golden_leggings[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":7}},attribute_modifiers=[{id:"armor",type:"generic.armor",amount:0,operation:"add_multiplied_base"}]] 1
data merge entity @s {NoAI:0,Silent:1,Health:1000f,attributes:[{id:"minecraft:generic.armor",base:0},{id:"minecraft:generic.max_health",base:1000},{id:"minecraft:generic.attack_damage",base:0},{id:"minecraft:generic.follow_range",base:0},{id:"minecraft:generic.jump_strength",base:0},{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.movement_speed",base:0},{id:"minecraft:generic.step_height",base:0},{id:"minecraft:generic.explosion_knockback_resistance",base:1}]}
execute at @s if entity @a[distance=..20] run data merge entity @s {CustomNameVisible:1b}
execute at @s unless entity @a[distance=..20] run data merge entity @s {CustomNameVisible:0b}
tp @s -121.5 54.00 23.50 180 0
effect give @s minecraft:fire_resistance infinite 0 true

#
scoreboard players set @s[scores={t3=..-1}] t3 0