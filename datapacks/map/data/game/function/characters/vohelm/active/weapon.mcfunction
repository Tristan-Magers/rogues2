tag @s remove wood
tag @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add wood
tag @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add wood
tag @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add wood
tag @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add wood
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] add wood

effect clear @s[tag=!wood] strength

tag @s remove aweap
tag @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] add aweap
tag @s[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] add aweap
tag @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] add aweap
tag @s[nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] add aweap
tag @s[nbt={Inventory:[{id:"minecraft:diamond_hoe",Slot:0b}]}] add aweap

#clear @s[x=-35,y=4,z=6,distance=20..,tag=!wood,nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] wooden_hoe
execute as @s[x=-35,y=4,z=6,distance=20..,tag=!aweap,nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:wooden_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"3 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1

scoreboard players remove @s swordcool 1
#scoreboard players set @s[tag=wood] swordcool 60

scoreboard players remove @s[scores={sword_switch_cool=1..}] sword_switch_cool 1

scoreboard players set @s[scores={swordcool=1..90},tag=!noweapon] swordcool 9999
scoreboard players set @s[tag=wood,tag=noweapon] swordcool 100
scoreboard players operation @s[tag=!wood,tag=!noweapon] swordcool = @s sword_switch_cool
scoreboard players set @s[tag=!wood,tag=!noweapon,scores={sword_switch_cool=..0}] sword_switch_cool 12
tag @s[tag=!wood] add noweapon
tag @s[tag=wood] remove noweapon

execute as @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 0.6 1.3

execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:wooden_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"3 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:stone_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:3,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"4 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:iron_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"5 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1
execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:diamond_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:golden_hoe[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-2.9,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:5,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Sacred Knife","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"6 Damage","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"2 Mana to upgade","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}','{"text":"Offhand to reset levels","color":"gold","italic":false}']] 1

clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] stone_hoe
clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] iron_hoe
clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] golden_hoe
clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:diamond_hoe",Slot:0b}]}] diamond_hoe

scoreboard players set @s[scores={swordcool=..0},tag=wood] swordcool 9999
scoreboard players set @s[scores={swordcool=..0},tag=!wood] swordcool 30

scoreboard players remove @s upgradedtextcool 1

scoreboard players set @s[tag=sworddeg] swordcool 1
tag @s remove sworddeg