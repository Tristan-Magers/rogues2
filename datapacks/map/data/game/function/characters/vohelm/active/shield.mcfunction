item replace entity @s[scores={shield=2..},nbt=!{Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] armor.chest with minecraft:iron_chestplate[attribute_modifiers=[{id:"armor",type:"generic.armor",amount:0,operation:"add_multiplied_base"}]]
#item replace entity @s[scores={shield=2..},nbt=!{Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] armor.legs with minecraft:iron_leggings

item replace entity @s[scores={shield=1}] armor.head with air
item replace entity @s[scores={shield=1}] armor.chest with air
#item replace entity @s[scores={shield=1}] armor.legs with air
item replace entity @s[scores={shield=1}] armor.feet with air

effect clear @s[scores={shield=1}] resistance

execute as @s[scores={shield=1}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ .8 1.4
execute as @s[scores={shield=1}] at @s run playsound minecraft:block.coral_block.fall master @a ~ ~ ~ 1 0
execute as @s[scores={shield=1}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 .4

particle minecraft:cloud ~ ~.5 ~ .2 .2 .2 0 9 force
scoreboard players remove @s shield 1
scoreboard players set @s invisoff 2
