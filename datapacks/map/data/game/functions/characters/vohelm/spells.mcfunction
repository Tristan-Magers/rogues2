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

#smoke bomb
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1,Silent:1,Silent:1,Tags:["sb"]}
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=sb,sort=nearest,limit=1] @p
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run scoreboard players set @e[tag=sb,sort=nearest,limit=1] move 28
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=sb,sort=nearest,limit=1] ~ ~1.7 ~
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run execute as @e[tag=sb,sort=nearest,limit=1,scores={move=28}] at @s run function game:detection/move
#scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone"}}] Mana 4

#totem
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run summon minecraft:vindicator ~ ~ ~ {Health:5,Tags:["totem"],Invulnerable:0b,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:bamboo",Count:1b}],Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0}],Silent:1}
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

execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.1
execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.3
execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.5
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.7

execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.1
execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.3
execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.5
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.7

tag @s remove first

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run item replace entity @s hotbar.0 with minecraft:diamond_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.16,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"FULLY UPGRADED\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"MAX UPGRADE :D","color":"gold","italic":false}']}} 1
scoreboard players remove @s[tag=switch,tag=!end,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] swordcool 9999
scoreboard players remove @s[tag=switch,tag=!end,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] Mana 2

tag @s remove switch
tag @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add switch
execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run item replace entity @s hotbar.0 with minecraft:golden_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.12,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}']}} 1
scoreboard players remove @s[tag=switch,scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] swordcool 9999
scoreboard players remove @s[tag=switch,scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] Mana 3

tag @s remove switch
tag @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add switch
execute as @s[scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run item replace entity @s hotbar.0 with minecraft:iron_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.08,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}']}} 1
scoreboard players remove @s[tag=switch,scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] swordcool 9999
scoreboard players remove @s[tag=switch,scores={Mana=3..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] Mana 3

tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add first
execute as @s[tag=first] at @s run item replace entity @s hotbar.0 with minecraft:stone_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.04,Operation:2,UUID:[I;-1219426109,1940867735,-1420316675,575706054],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Right-click to upgrade (2 Mana)","color":"gold","italic":false}']}} 1
scoreboard players remove @s[tag=first] swordcool 9999
scoreboard players remove @s[tag=first] Mana 2
