tag @s remove zeroh
tag @s[scores={health=20}] add zeroh

scoreboard players set @s[scores={class=1,healthshow=16..}] healthshow 15
scoreboard players set @s[scores={class=2,healthshow=19..}] healthshow 18
scoreboard players set @s[scores={class=3,healthshow=19..}] healthshow 18
scoreboard players set @s[scores={class=4,healthshow=17..}] healthshow 16
scoreboard players set @s[scores={class=5,healthshow=17..}] healthshow 16
scoreboard players set @s[scores={class=6,healthshow=23..}] healthshow 22

scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:bow"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:potion"}}] item 1
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:golden_apple"}}] item 1
scoreboard players set @s[scores={class=2},tag=wood] item 2

scoreboard players set @s[scores={healthshow=1..,walk=1..}] particles 5
scoreboard players set @s[scores={healthshow=1..,spiderwall=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..,plutospike=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..,jump=1..}] particles 14
scoreboard players set @s[scores={healthshow=1..,boostpart=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..,manaboost=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..},tag=totemdust] particles 2
tag @s[tag=totemdust] remove totemdust

scoreboard players set @s[scores={Mana=..0}] Mana 0
execute as @s at @s run scoreboard players set @s healthreal 60
execute as @s at @s run scoreboard players operation @s healthreal -= @s health

scoreboard players set @s[scores={healthshow=..0},tag=lobby,tag=!arena] healthshow 100

scoreboard players set @s[nbt={OnGround:1b},tag=nofalldam] healthreal 0
scoreboard players set @s[scores={nofalldamage=1..2}] healthreal 0
scoreboard players remove @s[nbt={OnGround:1b},tag=nofalldam] nofalldamage 1
tag @s[scores={nofalldamage=..0}] remove nofalldam

execute as @s[tag=!zeroh] at @s run scoreboard players operation @s healthshow -= @s healthreal
execute as @s[tag=!zeroh,scores={healthshow=..-1}] at @s run scoreboard players operation @s healthreal += @s healthshow

execute as @s[scores={healthreal=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-1"}'}
execute as @s[scores={healthreal=2}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-2"}'}
execute as @s[scores={healthreal=3}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-3"}'}
execute as @s[scores={healthreal=4}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-4"}'}
execute as @s[scores={healthreal=5}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[scores={healthreal=6}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}
execute as @s[scores={healthreal=7}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-7"}'}
execute as @s[scores={healthreal=8}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-8"}'}
execute as @s[scores={healthreal=9}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-9"}'}
execute as @s[scores={healthreal=10}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-10"}'}
execute as @s[scores={healthreal=11}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-11"}'}
execute as @s[scores={healthreal=12}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-12"}'}
execute as @s[scores={healthreal=13}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-13"}'}
execute as @s[scores={healthreal=14}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-14"}'}
execute as @s[scores={healthreal=15}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-15"}'}
execute as @s[scores={healthreal=16}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-16"}'}
execute as @s[scores={healthreal=17}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-17"}'}
execute as @s[scores={healthreal=18}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-18"}'}
execute as @s[scores={healthreal=19}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-19"}'}
execute as @s[scores={healthreal=20}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-20"}'}
execute as @s[scores={healthreal=21}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-21"}'}
execute as @s[scores={healthreal=22..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-22"}'}

execute as @s[scores={healthreal=1..},tag=!zeroh] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .3 .8 .3 2 40 force
effect give @s[scores={health=..59}] minecraft:health_boost 999999 9 true
effect give @s[scores={health=..59}] minecraft:instant_health 1 9 true
effect clear @s minecraft:absorption
execute as @s[scores={healthshow=..0}] at @s run clear @s
execute as @s[scores={healthshow=..0}] at @s run summon skeleton ~ ~ ~ {NoAI:1,Invulnerable:1,Fire:9000}
execute as @s[scores={healthshow=..0}] at @s positioned ~ ~.5 ~ run tp @e[distance=..1,type=minecraft:skeleton] @s

execute as @s[scores={healthshow=..0,class=2}] at @s run function game:characters/vohelm/die

execute as @s[scores={healthshow=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Invisible\""}
execute as @s[scores={healthshow=1..}] at @s run team join invisible @e[tag=stealth]
execute as @s[scores={healthshow=1..,particles=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Smoking\""}
execute as @s[scores={healthshow=1..,particles=1..}] at @s run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,plutoregen=0..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Hearts\""}
execute as @s[scores={healthshow=1..,plutoregen=0..}] at @s run team join visible @e[tag=stealth]
execute as @s[scores={healthshow=1..}] at @s if block ~ ~ ~ water run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Bubbles\""}
execute as @s[scores={healthshow=1..}] at @s if block ~ ~ ~ water run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,item=1}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Item\""}
execute as @s[scores={healthshow=1..,item=1}] at @s run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,item=2}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Weapon/Mask\""}
execute as @s[scores={healthshow=1..,item=2}] at @s run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,invisoff=-2..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Visible\""}
execute as @s[scores={healthshow=1..,invisoff=-2..}] at @s run team join visible @e[tag=stealth]
execute as @s[scores={healthshow=1..},nbt=!{Fire:-20s}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"FIRE!!\""}
execute as @s[scores={healthshow=1..},nbt=!{Fire:-20s}] at @s run team join visible @e[tag=stealth]
execute as @s[scores={healthshow=1..,shield=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"Armor\""}
execute as @s[scores={healthshow=1..,shield=1..}] at @s run team join shield @e[tag=stealth]
execute as @s[scores={healthshow=1..,noname=..-1,invisoff=-2..},tag=!lobby] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"NAMETAG\""}
execute as @s[scores={healthshow=1..,noname=..-1,invisoff=-2..},tag=!lobby] at @s run team join darkred @e[tag=stealth]
execute as @s[scores={healthshow=1..,glowing=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:"\"GLOWING\""}
execute as @s[scores={healthshow=1..,glowing=1..}] at @s run team join glowing @e[tag=stealth]

scoreboard players set @s[scores={invisoff=0..}] item 2

execute as @s[scores={healthshow=13..16}] at @s run title @s actionbar ["",{"text":"Health: ","bold":true},{"score":{"name":"@s","objective":"healthshow"},"color":"dark_green","bold":true},{"text":" Mana: ","bold":true},{"score":{"name":"@s","objective":"Mana"},"color":"gold","bold":true},{"text":" Visibility: ","bold":true},{"selector":"@e[tag=stealth]","bold":true}]
execute as @s[scores={healthshow=9..12}] at @s run title @s actionbar ["",{"text":"Health: ","bold":true},{"score":{"name":"@s","objective":"healthshow"},"color":"gold","bold":true},{"text":" Mana: ","bold":true},{"score":{"name":"@s","objective":"Mana"},"color":"gold","bold":true},{"text":" Visibility: ","bold":true},{"selector":"@e[tag=stealth]","bold":true}]
execute as @s[scores={healthshow=5..8}] at @s run title @s actionbar ["",{"text":"Health: ","bold":true},{"score":{"name":"@s","objective":"healthshow"},"color":"red","bold":true},{"text":" Mana: ","bold":true},{"score":{"name":"@s","objective":"Mana"},"color":"gold","bold":true},{"text":" Visibility: ","bold":true},{"selector":"@e[tag=stealth]","bold":true}]
execute as @s[scores={healthshow=1..4}] at @s run title @s actionbar ["",{"text":"Health: ","bold":true},{"score":{"name":"@s","objective":"healthshow"},"color":"dark_red","bold":true},{"text":" Mana: ","bold":true},{"score":{"name":"@s","objective":"Mana"},"color":"gold","bold":true},{"text":" Visibility: ","bold":true},{"selector":"@e[tag=stealth]","bold":true}]
execute as @s[scores={healthshow=17..}] at @s run title @s actionbar ["",{"text":"Health: ","bold":true},{"score":{"name":"@s","objective":"healthshow"},"color":"green","bold":true},{"text":" Mana: ","bold":true},{"score":{"name":"@s","objective":"Mana"},"color":"gold","bold":true},{"text":" Visibility: ","bold":true},{"selector":"@e[tag=stealth]","bold":true}]
scoreboard players set @s[scores={healthshow=..0},tag=!arena] respawn 221

#arena
tp @s[scores={healthshow=..0},tag=arena] -122 57 42 180 0
scoreboard players set @s[scores={healthshow=..0},tag=arena] Mana 5
scoreboard players set @s[scores={healthshow=..0},tag=arena] wtimer 0
scoreboard players set @s[scores={healthshow=..0},tag=arena] btimer 0

effect give @s[scores={healthshow=..0},tag=arena] minecraft:blindness 1 0 true
execute as @s[scores={healthshow=..0},tag=arena] at @s run playsound minecraft:entity.wither.hurt master @s
scoreboard players set @s[scores={healthshow=..0}] healthshow 100

replaceitem entity @s[tag=!spiritworld,scores={item=2,class=2}] armor.head minecraft:melon_seeds
replaceitem entity @s[tag=!spiritworld,scores={item=2,class=4}] armor.head minecraft:gold_nugget
replaceitem entity @s[tag=!spiritworld,scores={item=2,class=1}] armor.head minecraft:pink_dye
replaceitem entity @s[tag=!spiritworld,scores={item=2,class=3}] armor.head minecraft:cyan_dye
replaceitem entity @s[tag=!spiritworld,scores={item=2,class=5}] armor.head minecraft:light_gray_dye
replaceitem entity @s[tag=!spiritworld,scores={item=2,class=6}] armor.head minecraft:gray_dye
replaceitem entity @s[tag=!spiritworld,scores={item=2}] armor.feet minecraft:golden_boots{HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:-1,Operation:0,UUIDLeast:529172,UUIDMost:361804}]} 1
replaceitem entity @s[scores={item=..1}] armor.head minecraft:air
replaceitem entity @s[scores={item=..1}] armor.feet minecraft:air

scoreboard players set @s item 0

#nametag
scoreboard players add @s noname 0
team join noname @s[scores={noname=0..},tag=!lobby]
team leave @s[scores={noname=-1}]
scoreboard players remove @s[scores={noname=-1..}] noname 1