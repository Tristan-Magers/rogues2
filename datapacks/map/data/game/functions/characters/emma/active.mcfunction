#riptide
execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]}] at @s if block ~ ~ ~ water run item modify entity @s weapon.mainhand game:rip
execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]}] at @s if block ~ ~ ~ water run tag @s add inwatertri

execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]}] at @s if block ~ ~1 ~ water run item modify entity @s weapon.mainhand game:rip
execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]}] at @s if block ~ ~1 ~ water run tag @s add inwatertri

#remove riptide
execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]},tag=inwatertri,scores={tridentU=1..}] at @s run scoreboard players remove @s tridentH 1
execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]},tag=inwatertri,scores={tridentU=..0}] at @s unless block ~ ~ ~ water unless block ~ ~1 ~ water run scoreboard players add @s tridentH 1
execute as @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]},tag=inwatertri] at @s unless block ~ ~ ~ water unless block ~ ~1 ~ water run scoreboard players set @s tridentU 1

execute as @s at @s unless block ~ ~ ~ water unless block ~ ~1 ~ water run tag @s remove inwatertri

tag @s[nbt={SelectedItem:{id:"minecraft:trident"}}] add tridenthold
scoreboard players set @s[nbt=!{SelectedItem:{id:"minecraft:trident"}},tag=tridenthold] tridentU 1
execute as @s[nbt=!{SelectedItem:{id:"minecraft:trident"}},tag=tridenthold] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2
tag @s[nbt=!{SelectedItem:{id:"minecraft:trident"}}] remove tridenthold

scoreboard players set @s[scores={gettri=..-2,trident=1},nbt=!{Inventory:[{id:"minecraft:trident",Slot:0b}]}] trident 2
scoreboard players set @s[scores={gettri=..-2,trident=1},nbt=!{Inventory:[{id:"minecraft:trident",Slot:0b}]}] tridentH -1
execute as @s[scores={trident=2..}] at @s run function game:spells/manaup

scoreboard players remove @s[scores={gettri=..-2,trident=1,tridentU=1..}] tridentH 1

clear @s[scores={gettri=..-2,trident=1,tridentU=1..}] trident

#trident durability
execute as @s[scores={gettri=..-2,trident=1,tridentH=3..,tridentU=1..}] run item replace entity @s hotbar.0 with trident{Damage:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;483388759,-546159059,-1683212434,-1763269128],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;288113968,750800658,-1729021467,-1907597520],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"3 durability trident","color":"white","italic":false}','{"text":"7 max damage, medium charge","color":"gold","italic":false}','{"text":"Can be thrown","color":"green","italic":false}','{"text":"Riptide in water","color":"green","italic":false}','{"text":"Damaged when unequipped","color":"red","italic":false}']}} 1
execute as @s[scores={gettri=..-2,trident=1,tridentH=2,tridentU=1..}] run item replace entity @s hotbar.0 with trident{Damage:90,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;483388759,-546159059,-1683212434,-1763269128],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;288113968,750800658,-1729021467,-1907597520],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"3 durability trident","color":"white","italic":false}','{"text":"7 max damage, medium charge","color":"gold","italic":false}','{"text":"Can be thrown","color":"green","italic":false}','{"text":"Riptide in water","color":"green","italic":false}','{"text":"Damaged when unequipped","color":"red","italic":false}']}} 1
execute as @s[scores={gettri=..-2,trident=1,tridentH=1,tridentU=1..}] run item replace entity @s hotbar.0 with trident{Damage:170,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;483388759,-546159059,-1683212434,-1763269128],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;288113968,750800658,-1729021467,-1907597520],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"3 durability trident","color":"white","italic":false}','{"text":"7 max damage, medium charge","color":"gold","italic":false}','{"text":"Can be thrown","color":"green","italic":false}','{"text":"Riptide in water","color":"green","italic":false}','{"text":"Damaged when unequipped","color":"red","italic":false}']}} 1
execute as @s[scores={gettri=..-2,trident=1,tridentH=..0,tridentU=1..}] run playsound minecraft:item.shield.break master @a

scoreboard players set @s tridentU 0

#summon trident
execute as @s[scores={gettri=0}] at @s run tp @e[tag=dummytri,limit=1] ~ ~-100 ~
execute as @s[scores={gettri=0}] at @s run kill @e[tag=dummytri,limit=1]

execute as @s[scores={gettri=7}] at @s run summon armor_stand ^ ^ ^4.5 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["dummytri"],HandItems:[{id:"minecraft:trident",Count:1b},{}]}

execute as @s[scores={gettri=8}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^5 facing entity @p eyes
execute as @s[scores={gettri=7}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^4.5 facing entity @p eyes
execute as @s[scores={gettri=6}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^4 facing entity @p eyes
execute as @s[scores={gettri=5}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^3.5 facing entity @p eyes
execute as @s[scores={gettri=4}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^2 facing entity @p eyes
execute as @s[scores={gettri=3}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^1.5 facing entity @p eyes
execute as @s[scores={gettri=2}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^1 facing entity @p eyes
execute as @s[scores={gettri=1}] at @s run tp @e[tag=dummytri,limit=1] ^ ^ ^.5 facing entity @p eyes

execute as @s[scores={gettri=1}] at @s run execute as @e[tag=dummytri,limit=1] at @s run tp @s ~ ~.5 ~ facing ^1 ^ ^-6

execute as @s[scores={gettri=0}] run item replace entity @s hotbar.0 with trident{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;483388759,-546159059,-1683212434,-1763269128],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;288113968,750800658,-1729021467,-1907597520],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"3 durability trident","color":"white","italic":false}','{"text":"7 max damage, medium charge","color":"gold","italic":false}','{"text":"Can be thrown","color":"green","italic":false}','{"text":"Riptide in water","color":"green","italic":false}','{"text":"Damaged when unequipped","color":"red","italic":false}']}} 1

scoreboard players remove @s gettri 1

scoreboard players remove @s manaboost 1

#scoreboard players add @s[scores={manaboost=1..}] manaT 1

execute as @s[scores={manaboost=1..}] at @s run particle minecraft:rain ~ ~.5 ~ .25 .4 .25 0 2 force

scoreboard players remove @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:4b}]}] Mana 4
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:4b}]}] manaboost 100
clear @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:4b}]}] glass_bottle
effect give @s[scores={manaboost=20..}] jump_boost 1 1 true
effect give @s[scores={manaboost=20..}] resistance 1 0 true
effect give @s[scores={manaboost=20..},nbt={SelectedItem:{id:"minecraft:trident"}}] strength 1 0
effect clear @s[nbt=!{SelectedItem:{id:"minecraft:trident"}}] strength

scoreboard players set @s potion 0

clear @s[tag=!spiritworld,scores={Mana=4..},nbt=!{Inventory:[{id:"minecraft:potion",Slot:4b}]}] potion
execute as @s[tag=!spiritworld,scores={Mana=4..},nbt=!{Inventory:[{id:"minecraft:potion",Slot:4b}]}] run item replace entity @s hotbar.4 with potion{display:{Name:"[{\"text\":\"Storm Energy\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Boost/Strength\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"5 second duration","color":"white","italic":false}','{"text":"+20% speed","color":"green","italic":false}','{"text":"+3 damage on Trident melee","color":"green","italic":false}','{"text":"20% damage resistance","color":"green","italic":false}','{"text":"Causes particle","color":"red","italic":false}']},CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:100,ShowParticles:1b},{Id:8b,Amplifier:1b,Duration:100,ShowParticles:1b},{Id:5b,Amplifier:0b,Duration:100,ShowParticles:1b},{Id:16b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:11b,Amplifier:0b,Duration:100,ShowParticles:1b}],Potion:"minecraft:thick",HideFlags:127}

#bolt delay
effect clear @s[scores={boltdelay=15}] slowness
execute as @s[scores={boltdelay=0}] at @s run function game:spells/manaup
scoreboard players remove @s[scores={boltdelay=0..}] boltdelay 1