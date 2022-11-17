#burnout
execute as @s[scores={burnout=-10..}] at @s run function game:characters/sparket/active/burnout
scoreboard players remove @s[scores={burnoutT=-10..}] burnoutT 1
execute as @s[scores={burnoutT=0}] at @s run function game:spells/manaup

#boost
scoreboard players remove @s[scores={boostT=0..}] boostT 1
scoreboard players remove @s[scores={boostpart=0..}] boostpart 1

execute as @s[scores={boostpart=0}] at @s run function game:spells/manaup

execute as @s[scores={boostpart=0..}] at @s run particle flame ~ ~.1 ~ .1 .1 .1 0.02 1 force
scoreboard players set @s[scores={boostT=0}] boostpart 0
execute as @s[scores={boostT=0}] at @s run function game:spells/manaup
execute as @s[scores={boostT=180}] at @s run function game:spells/manaup

#end boostT
execute as @s[scores={boostT=30}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 0

effect give @s[nbt={OnGround:0b},scores={boostT=1}] minecraft:slow_falling 1 0 true
scoreboard players add @s[nbt={OnGround:0b},scores={boostT=1}] boostT 1

tag @s[nbt={OnGround:0b},scores={boostT=1..}] add flamefall
execute as @s[nbt={OnGround:1b},tag=flamefall] at @s run particle minecraft:flame ~ ~.2 ~ 0.3 0.1 0.3 0.08 10
scoreboard players set @s[nbt={OnGround:1b},tag=flamefall] particles 6
tag @s[nbt={OnGround:1b},tag=flamefall] remove flamefall

execute as @s[scores={firefist=1..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .5 2
execute as @s[scores={firefist=1..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .6 1.6
execute as @s[scores={firefist=1..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .7 1.2

scoreboard players set @p firefist 0

#fire heal
scoreboard players add @s fireheal 1
scoreboard players add @s[scores={fireheal=70..}] healthshow 1
execute as @s[scores={fireheal=70..}] at @s run playsound minecraft:item.dye.use master @s ~ ~ ~ 0.5 0
execute as @s[scores={fireheal=70..}] at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 0.2 1.6
execute as @s[scores={fireheal=70..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.3
execute as @s[scores={fireheal=70..}] at @s run playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 0.2 1.4
scoreboard players set @s[scores={fireheal=70..}] fireheal 0
scoreboard players set @s[scores={healthshow=15..}] fireheal -120

scoreboard players set @s[nbt=!{Fire:-20s}] fireheal -120
scoreboard players set @s[scores={poison=1..}] fireheal -120
scoreboard players set @s[scores={poison2=1..}] fireheal -120

#correct fist
item replace entity @s[scores={wtimer=60}] hotbar.0 with minecraft:wooden_sword{Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:fire_aspect",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.26,Operation:2,UUID:[I;-1794733450,173426169,-1787019437,449822666],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Fire Fist\",\"color\":\"gold\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
execute as @s[scores={wtimer=60}] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.5
execute as @s[scores={wtimer=60}] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 0.5
execute as @s[scores={wtimer=60}] at @s anchored eyes run particle minecraft:flame ^ ^ ^1 0.2 0.2 0.2 0.1 4
clear @s[scores={wtimer=60}] golden_sword
clear @s[scores={wtimer=3..59},nbt=!{Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] wooden_sword
scoreboard players set @s[scores={wtimer=3..59},nbt=!{Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] wtimer 2

# give players knockback res
execute as @s[scores={wtimer=2..59},nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] at @s run execute as @a[distance=0.01..10] run attribute @s minecraft:generic.knockback_resistance base set 0.25

#correct bow
clear @s[scores={btimer=0..},nbt=!{Inventory:[{id:"minecraft:bow",Slot:1b}]}] bow
scoreboard players set @s[scores={btimer=0..},nbt=!{Inventory:[{id:"minecraft:bow",Slot:1b}]}] btimer -1
