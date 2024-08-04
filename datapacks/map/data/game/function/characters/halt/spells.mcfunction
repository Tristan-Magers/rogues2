#dagger
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:feather"}}] wtimer 160
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:feather"}}] Mana 3
execute as @s[nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run item replace entity @s hotbar.0 with minecraft:stone_sword[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:knockback":2}},attribute_modifiers={modifiers:[{id:"attack_speed",type:"generic.attack_speed",amount:-3.535,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:12,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.05,operation:"add_multiplied_total",slot:"any"}],show_in_tooltip:false},custom_name='[{"text":"Draining Claw","color":"white","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"13 Damage","color":"red","italic":false},{"text":") (","color":"white","italic":false},{"text":"Boost on hit","color":"gold","italic":false},{"text":")","color":"white","italic":false}]',lore=['{"text":"Deadly claws that steal health","color":"white","italic":false}','{"text":"13 damage, 2.15s charge","color":"gold","italic":false}','{"text":"+5% speed","color":"green","italic":false}','{"text":"2-5 Health steal","color":"green","italic":false}','{"text":"3s speed and jump boost on hit","color":"green","italic":false}','{"text":"1 use","color":"red","italic":false}','{"text":"Breaks if unequipped","color":"red","italic":false}']]

#hover
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] hover 40
#scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] invisoff 40
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .7
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .4
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] Mana 4

#hover cancel
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:potato"}}] hover -1
effect give @s[nbt={SelectedItem:{id:"minecraft:potato"}}] levitation 1 0 true
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:potato"}}] nolev 8
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:potato"}}] invisoff 8
execute as @s[nbt={SelectedItem:{id:"minecraft:potato"}}] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0
execute as @s[nbt={SelectedItem:{id:"minecraft:potato"}}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.5 .2
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:potato"}}] Mana 1

#lethal shot
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:nether_brick"}}] btimer 2
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:nether_brick"}}] Mana 7
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_brick"}}] at @s run item replace entity @s hotbar.1 with minecraft:bow[damage=80,unbreakable={show_in_tooltip:false},custom_name='[{"text":"Ghost Bow","color":"red","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"Shoot through walls","color":"gray","italic":false},{"text":") [","color":"white","italic":false},{"text":"7 Damage","color":"red","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"A bow that can shoot through walls","color":"white","italic":false}','{"text":"7 damage","color":"green","italic":false}','{"text":"5 damage through walls","color":"red","italic":false}']] 1

#summon spider

#web
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,CustomName:'{"text":"web"}',Invisible:1,Duration:999999}
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run tp @e[name=web,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run scoreboard players set @e[name=web,distance=...1,limit=1,sort=nearest] move 1
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run execute as @e[name=web,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run tp @s ~ ~1.45 ~
#execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run execute as @e[name=web,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run function game:faceaway
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] Mana 5
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 1.4
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 .5

#spider
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run summon minecraft:cave_spider ~ ~ ~ {NoAI:1,Health:8.0}
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run tp @e[type=cave_spider,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run scoreboard players operation @e[type=cave_spider,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run execute as @e[type=cave_spider,distance=...2,limit=1,sort=nearest] at @s run tp @s ~ ~.2 ~ ~ 0
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] Mana 5
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] spider_delay 20

#Sticky Hands
tellraw @s[nbt={SelectedItem:{id:"minecraft:paper"}}] {"text":"[§c§l!§r] Move is active at all times and requires no further action.\n§6Hold shift while looking at a block to climb."}