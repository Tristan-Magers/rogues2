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
execute as @s[x=-35,y=4,z=6,distance=20..,tag=!aweap,nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:wooden_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1

scoreboard players remove @s swordcool 1
#scoreboard players set @s[tag=wood] swordcool 60

scoreboard players set @s[scores={swordcool=1..90},tag=!noweapon] swordcool 9999
scoreboard players set @s[tag=wood,tag=noweapon] swordcool 100
scoreboard players set @s[tag=!wood,tag=!noweapon] swordcool 0
tag @s[tag=!wood] add noweapon
tag @s[tag=wood] remove noweapon

execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:wooden_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:stone_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.04,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:iron_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.08,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
execute as @s[scores={swordcool=0},nbt={Inventory:[{id:"minecraft:diamond_hoe",Slot:0b}]}] at @s run item replace entity @s hotbar.0 with minecraft:golden_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.12,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1

clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] stone_hoe
clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] iron_hoe
clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] golden_hoe
clear @s[scores={swordcool=0},nbt=!{Inventory:[{id:"minecraft:diamond_hoe",Slot:0b}]}] diamond_hoe

scoreboard players set @s[scores={swordcool=..0},tag=wood] swordcool 9999
scoreboard players set @s[scores={swordcool=..0},tag=!wood] swordcool 30

scoreboard players remove @s upgradedtextcool 1

scoreboard players set @s[tag=sworddeg] swordcool 1
tag @s remove sworddeg