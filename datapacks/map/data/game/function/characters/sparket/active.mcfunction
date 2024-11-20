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
item replace entity @s[scores={wtimer=60}] hotbar.0 with minecraft:wooden_sword[unbreakable={show_in_tooltip:false},hide_additional_tooltip={},enchantments={levels:{"minecraft:fire_aspect":1,"minecraft:knockback":1},show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:-2.53,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"any"},{id:"movement_speed",type:"movement_speed",amount:0.26,operation:"add_multiplied_total",slot:"any"}],show_in_tooltip:false},custom_name='[{"text":"Fire Fist","color":"gold","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"5 Damage","color":"red","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"A fist to damage and ignite your foes","color":"white","italic":false}','{"text":"5 damage, 0.68s charge","color":"gold","italic":false}','{"text":"+26% speed","color":"green","italic":false}','{"text":"2s fire (2 damage)","color":"green","italic":false}','{"text":"Knockback (reduced)","color":"green","italic":false}','{"text":"0.4s delay","color":"red","italic":false}']] 1
execute as @s[scores={wtimer=60}] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.5
execute as @s[scores={wtimer=60}] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 0.5
execute as @s[scores={wtimer=60}] at @s anchored eyes run particle minecraft:flame ^ ^ ^1 0.2 0.2 0.2 0.1 4
clear @s[scores={wtimer=60}] golden_sword
clear @s[scores={wtimer=3..59},nbt=!{Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] wooden_sword
scoreboard players set @s[scores={wtimer=3..59},nbt=!{Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] wtimer 2

# give players knockback res
execute as @s[scores={wtimer=2..59},nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] at @s run execute as @a[distance=0.01..10] run attribute @s minecraft:knockback_resistance base set 0.2

#correct bow
clear @s[scores={btimer=0..},nbt=!{Inventory:[{id:"minecraft:bow",Slot:1b}]}] bow
scoreboard players set @s[scores={btimer=0..},nbt=!{Inventory:[{id:"minecraft:bow",Slot:1b}]}] btimer -1
