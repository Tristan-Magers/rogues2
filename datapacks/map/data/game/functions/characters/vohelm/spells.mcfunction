#splash damage
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.5
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ .7 2
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1,Tags:["pshot"]}
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run tp @e[tag=pshot,sort=nearest,limit=1] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run tp @e[tag=pshot,sort=nearest,limit=1] ~ ~1.7 ~
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run execute as @e[tag=pshot,sort=nearest,limit=1] at @s run function game:faceaway
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] Mana 5

#invul
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .7 1.6
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.5 1.2
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ .3 .2
effect give @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] resistance 3 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] shield 60
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:sugar"}}] Mana 7

#smoke bomb
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1,Tags:["sb"]}
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=sb,sort=nearest,limit=1] @p
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run scoreboard players set @e[tag=sb,sort=nearest,limit=1] move 28
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=sb,sort=nearest,limit=1] ~ ~1.7 ~
#execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run execute as @e[tag=sb,sort=nearest,limit=1,scores={move=28}] at @s run function game:detection/move
#scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone"}}] Mana 4

#totem
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run summon minecraft:vindicator ~ ~ ~ {Health:5,Tags:["totem"],Invulnerable:0b,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:bamboo",Count:1b}],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0},{Name:generic.attackDamage,Base:0}],Silent:1}
#team join noColide @e[tag=totem,sort=nearest,limit=1]
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run tp @e[tag=totem,sort=nearest,limit=1] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run scoreboard players operation @e[tag=totem,distance=...1,limit=1,sort=nearest] playerID = @s playerID
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone"}}] Mana 4

#weapon
tag @s remove end
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] add end
tellraw @s[tag=end,scores={upgradedtextcool=..0}] {"text":"Weapon fully upgraded!","color":"red"}
execute as @s[tag=end,scores={upgradedtextcool=..0}] at @s run playsound minecraft:block.note_block.snare master @p ~ ~ ~ .4 .5
scoreboard players set @s[tag=end] upgradedtextcool 10

execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.1
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.3
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.5
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .4 1.7

execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.1
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.3
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.5
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ .8 1.7

tag @s remove first

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s run replaceitem entity @s hotbar.0 minecraft:diamond_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:688731,UUIDMost:349779,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:7,Operation:0,UUIDLeast:337862,UUIDMost:868656,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:.64,Operation:1,UUIDLeast:108373,UUIDMost:23651,Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"8 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"FULLY UPGRADED\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
scoreboard players remove @s[tag=switch,tag=!end,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] swordcool 100
scoreboard players remove @s[tag=switch,tag=!end,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] Mana 2

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run replaceitem entity @s hotbar.0 minecraft:golden_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:688731,UUIDMost:349779,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:337862,UUIDMost:868656,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:.48,Operation:1,UUIDLeast:108373,UUIDMost:23651,Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] swordcool 100
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] Mana 2

tag @s remove switch
tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add switch
execute as @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run replaceitem entity @s hotbar.0 minecraft:iron_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:688731,UUIDMost:349779,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:337862,UUIDMost:868656,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:.32,Operation:1,UUIDLeast:108373,UUIDMost:23651,Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] swordcool 100
scoreboard players remove @s[tag=switch,scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] Mana 2

tag @s[scores={Mana=2..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add first
execute as @s[tag=first] at @s run replaceitem entity @s hotbar.0 minecraft:stone_hoe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:688731,UUIDMost:349779,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:0,UUIDLeast:337862,UUIDMost:868656,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:.16,Operation:1,UUIDLeast:108373,UUIDMost:23651,Slot:"mainhand"}],display:{Name:"[{\"text\":\"Sacred Knife\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"2 Mana to upgade\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1
scoreboard players remove @s[tag=first] swordcool 100
scoreboard players remove @s[tag=first] Mana 2
