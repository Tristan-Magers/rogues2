scoreboard players add @s FBreload 0

#fire fist
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:coal"}}] wtimer 68
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:coal"}}] Mana 6
execute as @s[nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 0
execute as @s[nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1
execute as @s[nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 0
#execute as @s[nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run item replace entity @s hotbar.0 with minecraft:wooden_sword{Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:fire_aspect",lvl:1}],AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:-2.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"attack_damage",Name:"attack_damage",Amount:3,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"movement_speed",Name:"movement_speed",Amount:0.24,Operation:2,UUID:[I;-1794733450,173426169,-1787019437,449822666],Slot:"mainhand"}],custom_name=[{"text":"Fire Fist","color":"gold","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"5 Damage","color":"red","italic":false},{"text":"]","color":"white","italic":false}]"}} 1
execute as @s[nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run item replace entity @s hotbar.0 with minecraft:golden_sword[attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:1000,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:-1,operation:"add_value",slot:"any"},{id:"movement_speed",type:"movement_speed",amount:0.18,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"","color":"gold","italic":false,"bold":false},{"text":"[","color":"white","italic":false},{"text":"CHARGING","color":"dark_red","italic":false,"bold":false},{"text":"]","color":"white","italic":false}]'] 1

#flame bow
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:charcoal"}}] btimer 2
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:charcoal"}}] Mana 8
execute as @s[nbt={SelectedItem:{id:"minecraft:charcoal"}}] at @s run item replace entity @s hotbar.1 with minecraft:bow[damage=40,unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:flame":1},show_in_tooltip:false},custom_name='[{"text":"Flame Bow","color":"red","italic":false,"bold":true}]',lore=['{"text":"A bow that sets players on fire!","color":"white","italic":false}','{"text":"6 max damage","color":"gold","italic":false}','{"text":"2s fire (2 damage)","color":"green","italic":false}','{"text":"Only 2 arrows","color":"red","italic":false}']] 1

#fire breath
execute as @s[scores={FBreload=..0},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,CustomName:'{"text":"Fire"}',Invulnerable:1,Invisible:1,Small:0,Marker:1}
execute as @s[scores={FBreload=..0},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,CustomName:'{"text":"Fire"}',Invulnerable:1,Invisible:1,Small:1,Marker:1}
execute as @s[scores={FBreload=..0},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 0.8
execute as @s[scores={FBreload=..0},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.3
scoreboard players remove @s[scores={FBreload=..0},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] Mana 4
#scoreboard players set @s[scores={FBreload=..0,glowing=..10},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] glowing 12
scoreboard players set @s[scores={FBreload=..0},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] FBreload 5

#burnout
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] burnout 18
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] burnoutT 48
execute as @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.6
execute as @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.3
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] Mana 7
execute as @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] at @s run function game:getdir
clear @s[nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] blaze_powder

#zero-gravity
execute as @s[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ .5 .6
execute as @s[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ .3 .6
execute as @s[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .4 1.5
execute as @s[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s run effect give @p minecraft:slow_falling 3 0 true
execute as @s[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s run effect give @p minecraft:jump_boost 3 4 true
execute as @s[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s run effect give @p minecraft:speed 3 0 true
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:brick"}}] Mana 4
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:brick"}}] boostT 61

#Healing Flame
tellraw @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] {"text":"[§c§l!§r] Move is active at all times and requires no further action.\n§6Heal after not taking damage for 9.5 seconds."}