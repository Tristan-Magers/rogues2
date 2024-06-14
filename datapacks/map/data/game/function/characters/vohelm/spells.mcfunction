#thorns
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.5
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ .7 2
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1,Silent:1,Silent:1,Tags:["pshot"]}
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run tp @e[tag=pshot,sort=nearest,limit=1] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}},tag=!isshift] at @s run tp @e[tag=pshot,sort=nearest,limit=1] ~ ~1.7 ~
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}},tag=isshift] at @s run tp @e[tag=pshot,sort=nearest,limit=1] ~ ~1.4 ~
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run execute as @e[tag=pshot,sort=nearest,limit=1] at @s run function game:faceaway
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] invisoff 13
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] Mana 6

#invul
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .7 1.6
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.5 1.2
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ .3 .2
effect give @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] resistance 3 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] shield 44
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] shieldT 59
#tag @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] add sworddeg
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] nocap 44
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] Mana 6
clear @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] sugar

#smoke bomb
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1,Silent:1,Silent:1,Tags:["sb"]}
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=sb,sort=nearest,limit=1] @p
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run scoreboard players set @e[tag=sb,sort=nearest,limit=1] move 28
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=sb,sort=nearest,limit=1] ~ ~1.7 ~
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run execute as @e[tag=sb,sort=nearest,limit=1,scores={move=28}] at @s run function game:detection/move
#scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone"}}] Mana 4

#totem
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run summon minecraft:vindicator ~ ~ ~ {Tags:["totem"],Invulnerable:0b,IsBaby:0b,Health:3f,ArmorItems:[{id:"minecraft:golden_boots",count:1,components:{"minecraft:attribute_modifiers":[{id:"armor",type:"generic.armor",amount:0,operation:"add_multiplied_base"}]}},{},{},{id:"minecraft:bamboo",count:1}],attributes:[{id:"minecraft:generic.attack_damage",base:0},{id:"minecraft:generic.fall_damage_multiplier",base:0},{id:"minecraft:generic.follow_range",base:0},{id:"minecraft:generic.movement_speed",base:0}],Silent:1}
#team join noColide @e[tag=totem,sort=nearest,limit=1]
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=totem,sort=nearest,limit=1] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run scoreboard players operation @e[tag=totem,distance=...1,limit=1,sort=nearest] playerID = @s playerID
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone"}}] Mana 6

#weapon
tag @s remove end
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] add end
tellraw @s[tag=end,scores={upgradedtextcool=..0}] {"text":"Weapon fully upgraded!","color":"red"}
execute as @s[tag=end,scores={upgradedtextcool=..0}] at @s run playsound minecraft:block.note_block.snare master @p ~ ~ ~ .4 .5
scoreboard players set @s[tag=end] upgradedtextcool 10

execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run scoreboard players set @s sword_boost 23
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run scoreboard players set @s sword_boost 23
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run scoreboard players set @s sword_boost 23
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run scoreboard players set @s sword_boost 23

execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ .4 1.1
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ .4 1.3
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ .4 1.5
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ .4 1.7

execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ .8 1.1
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ .8 1.3
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ .8 1.5
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ .8 1.7

execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ .8 1.7
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:entity.generic.small_fall master @s ~ ~ ~ 1 2

tag @s remove first

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run item replace entity @s hotbar.0 with minecraft:diamond_hoe[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:knockback":1}},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:6,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"7 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"FULLY UPGRADED","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"MAX UPGRADE :D","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
scoreboard players remove @s[tag=switch,tag=!end,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] swordcool 9999
scoreboard players remove @s[tag=switch,tag=!end,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] Mana 2

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run item replace entity @s hotbar.0 with minecraft:golden_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:5,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"6 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] swordcool 9999
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] Mana 2

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run item replace entity @s hotbar.0 with minecraft:iron_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"5 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] swordcool 9999
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] Mana 2

tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add first
execute as @s[tag=first] at @s run item replace entity @s hotbar.0 with minecraft:stone_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:3,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"4 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
scoreboard players remove @s[tag=first] swordcool 9999
scoreboard players remove @s[tag=first] Mana 2