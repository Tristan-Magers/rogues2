tag @s remove zeroh
tag @s[scores={health=20}] add zeroh

## Visibility text/effects based on items
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:bow"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:potion"}}] item 1
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] item 2
scoreboard players set @s[scores={healthshow=1..},nbt={SelectedItem:{id:"minecraft:golden_apple"}}] item 1
scoreboard players set @s[scores={class=2},tag=wood] item 2

## Particles based on motion/status
scoreboard players set @s[scores={healthshow=1..,walk=1..,partdelay=12..}] particles 5
scoreboard players set @s[scores={healthshow=1..,spiderwall=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..,plutospike=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..,jump=1..}] particles 14
scoreboard players set @s[scores={healthshow=1..,boostpart=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..,manaboost=1..}] particles 2
scoreboard players set @s[scores={healthshow=1..},tag=totemdust] particles 2
tag @s[tag=totemdust] remove totemdust

## find damage done. also mana for some reason
scoreboard players set @s[scores={Mana=..0}] Mana 0
execute as @s at @s run scoreboard players set @s healthreal 60
execute as @s at @s run scoreboard players operation @s healthreal -= @s health

## lobby health
scoreboard players set @s[scores={healthshow=..0},tag=lobby,tag=!arena] healthshow 100

## prvent fall damage. used by jump pad
scoreboard players set @s[nbt={OnGround:1b},tag=nofalldam] healthreal 0
scoreboard players set @s[scores={nofalldamage=1..2}] healthreal 0
scoreboard players remove @s[nbt={OnGround:1b},tag=nofalldam] nofalldamage 1
tag @s[scores={nofalldamage=..0}] remove nofalldam

## damage absorption, used to modify damage done. used for bolt and crit hits
execute as @s[scores={healthreal=1..}] at @s run scoreboard players operation @s healthreal -= @s damageob
scoreboard players set @s[scores={healthreal=..-1,damageob=1..}] healthreal 0
scoreboard players set @s damageob 0

## lock fire arrow damage
execute as @s[tag=flame_arrow_hit] run scoreboard players add @s healthreal 1
execute as @s[tag=flame_arrow_hit,scores={healthreal=7..}] run scoreboard players set @s healthreal 7

## change current health by damage
execute as @s[tag=!zeroh] at @s run scoreboard players operation @s healthshow -= @s healthreal
execute as @s[tag=!zeroh,scores={healthshow=..-1}] at @s run scoreboard players operation @s healthreal += @s healthshow

## cap damage
#scoreboard players set @s[scores={healthreal=14..}] healthreal 14

## damage number show
execute as @s[scores={healthreal=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-1"}'}
execute as @s[scores={healthreal=2}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-2"}'}
execute as @s[scores={healthreal=3}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-3"}'}
execute as @s[scores={healthreal=4}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-4"}'}
execute as @s[scores={healthreal=5}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-5"}'}
execute as @s[scores={healthreal=6}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-6"}'}
execute as @s[scores={healthreal=7}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-7"}'}
execute as @s[scores={healthreal=8}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-8"}'}
execute as @s[scores={healthreal=9}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-9"}'}
execute as @s[scores={healthreal=10}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-10"}'}
execute as @s[scores={healthreal=11}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-11"}'}
execute as @s[scores={healthreal=12}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-12"}'}
execute as @s[scores={healthreal=13}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-13"}'}
execute as @s[scores={healthreal=14}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-14"}'}
execute as @s[scores={healthreal=15}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-15"}'}
execute as @s[scores={healthreal=16}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-16"}'}
execute as @s[scores={healthreal=17}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-17"}'}
execute as @s[scores={healthreal=18}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-18"}'}
execute as @s[scores={healthreal=19}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-19"}'}
execute as @s[scores={healthreal=20}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-20"}'}
execute as @s[scores={healthreal=21}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-21"}'}
execute as @s[scores={healthreal=22..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-22"}'}

scoreboard players set @s[scores={healthreal=1..},tag=!zeroh] fireheal -120

execute as @s[scores={healthreal=1..},tag=!zeroh] at @s run particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ .3 .8 .3 2 40 force
effect give @s[scores={health=..59}] minecraft:health_boost 999999 9 true
effect give @s[scores={health=..59}] minecraft:instant_health 1 9 true
effect clear @s minecraft:absorption
execute as @s[scores={healthshow=..0}] at @s run clear @s
execute as @s[scores={healthshow=..0}] at @s run summon skeleton ~ ~ ~ {NoAI:1,Invulnerable:1,Fire:9000}
execute as @s[scores={healthshow=..0}] at @s positioned ~ ~.5 ~ run tp @e[distance=..1,type=minecraft:skeleton] @s

execute as @s[scores={healthshow=..0,class=2}] at @s run function game:characters/vohelm/die

#
tag @s remove project_hit
tag @s[scores={healthreal=2..,class=6,notele=1..}] add project_hit
execute as @s[tag=project_hit] at @s run say half
execute as @s[tag=project_hit] at @s run scoreboard players operation @s healthreal /= .2 .num
execute as @s[tag=project_hit] at @s run scoreboard players operation @s healthshow += @s healthreal
execute as @s[tag=project_hit,scores={healthshow=1..}] at @s run function game:characters/barbose/active/check_save_spot
execute as @s[tag=project_hit,scores={healthshow=..0}] at @s run function game:characters/barbose/active/remove_save_spot

## Visibility text
execute as @s[scores={healthshow=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±Invisible±"}'}
execute as @s[scores={healthshow=1..}] at @s run team join invisible @e[tag=stealth]
execute as @s[scores={healthshow=1..,particles=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±Smoking±±"}'}
execute as @s[scores={healthshow=1..,particles=1..}] at @s run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,plutoregen=0..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±±Heart±±±"}'}
execute as @s[scores={healthshow=1..,plutoregen=0..}] at @s run team join visible @e[tag=stealth]
execute as @s[scores={healthshow=1..,particles=1..}] at @s if block ~ ~ ~ water run scoreboard players set @s fire_time_effect 0
execute as @s[scores={healthshow=1..,particles=1..}] at @s if block ~ ~ ~ water run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±Bubbles±±"}'}
execute as @s[scores={healthshow=1..,particles=1..}] at @s if block ~ ~ ~ water run team join shield @e[tag=stealth]
execute as @s[scores={healthshow=1..,item=1}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±±±Item±±±"}'}
execute as @s[scores={healthshow=1..,item=1}] at @s run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,item=2}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±Item/Mask±"}'}
execute as @s[scores={healthshow=1..,item=2}] at @s run team join smoke @e[tag=stealth]
execute as @s[scores={healthshow=1..,invisoff=-2..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±Visible±±"}'}
execute as @s[scores={healthshow=1..,invisoff=-2..}] at @s run team join visible @e[tag=stealth]
execute as @s[scores={healthshow=1..,fire_time_effect=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±±FIRE!±±±"}'}
execute as @s[scores={healthshow=1..,fire_time_effect=1..}] at @s run team join visible @e[tag=stealth]
execute as @s[scores={healthshow=1..,shield=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±±Armor±±±"}'}
execute as @s[scores={healthshow=1..,shield=1..}] at @s run team join shield @e[tag=stealth]
execute as @s[scores={healthshow=1..,noname=..-1,invisoff=-2..},tag=!lobby] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±NAMETAG±±"}'}
execute as @s[scores={healthshow=1..,noname=..-1,invisoff=-2..},tag=!lobby] at @s run team join darkred @e[tag=stealth]
execute as @s[scores={healthshow=1..,glowing=1..}] at @s run execute as @e[tag=stealth] at @s run data merge entity @s {CustomName:'{"text":"±±GLOWING±±"}'}
execute as @s[scores={healthshow=1..,glowing=1..}] at @s run team join glowing @e[tag=stealth]

scoreboard players set @s[scores={invisoff=0..}] item 2

## Spacing for health and mana variance
execute as @e[tag=mana_spacing] at @s run data merge entity @s {CustomName:'{"text":""}'}
execute as @e[tag=health_spacing] at @s run data merge entity @s {CustomName:'{"text":""}'}
execute as @s[scores={healthshow=..9}] at @s run execute as @e[tag=health_spacing] at @s run data merge entity @s {CustomName:'{"text":"±"}'}
execute as @s[scores={Mana=..9}] at @s run execute as @e[tag=mana_spacing] at @s run data merge entity @s {CustomName:'{"text":"±"}'}

## MAX HEALTH
scoreboard players set @s[scores={class=1,healthshow=16..}] healthshow 15
scoreboard players set @s[scores={class=2,healthshow=19..}] healthshow 18
scoreboard players set @s[scores={class=3,healthshow=19..}] healthshow 18
scoreboard players set @s[scores={class=4,healthshow=17..}] healthshow 16
scoreboard players set @s[scores={class=5,healthshow=17..}] healthshow 16
scoreboard players set @s[scores={class=6,healthshow=22..}] healthshow 21

## Health text
scoreboard players set @s chibi_icon 0

scoreboard players set @s[scores={healthshow=1..}] chibi_icon 1
scoreboard players set @s[scores={healthshow=1..,invisoff=-1..}] chibi_icon 2

scoreboard players set @s[scores={class=1,healthshow=1..,invisoff=..-2}] chibi_icon 101
scoreboard players set @s[scores={class=1,healthshow=1..,particles=1..}] chibi_icon 102
scoreboard players set @s[scores={class=1,healthshow=1..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] chibi_icon 110
scoreboard players set @s[scores={class=1,healthshow=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] chibi_icon 110
scoreboard players set @s[scores={class=1,healthshow=1..,invisoff=-1..}] chibi_icon 100
scoreboard players set @s[scores={class=1,healthshow=1..,invisoff=-1..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] chibi_icon 120
scoreboard players set @s[scores={class=1,healthshow=1..,invisoff=-1..},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] chibi_icon 120
scoreboard players set @s[scores={class=1,healthshow=1..,fire_time_effect=1..}] chibi_icon 104
scoreboard players set @s[scores={class=1,healthshow=1..,glowing=1..}] chibi_icon 103

scoreboard players set @s[scores={class=4,healthshow=1..,invisoff=..-2}] chibi_icon 401
scoreboard players set @s[scores={class=4,healthshow=1..,particles=1..}] chibi_icon 402
scoreboard players set @s[scores={class=4,healthshow=1..,plutoregen=0..}] chibi_icon 410
scoreboard players set @s[scores={class=4,healthshow=1..},nbt={SelectedItem:{id:"minecraft:bow"}}] chibi_icon 430
scoreboard players set @s[scores={class=4,healthshow=1..,invisoff=-1..}] chibi_icon 400
scoreboard players set @s[scores={class=4,healthshow=1..,invisoff=-1..,plutoregen=0..}] chibi_icon 450
scoreboard players set @s[scores={class=4,healthshow=1..,invisoff=-1..},nbt={SelectedItem:{id:"minecraft:bow"}}] chibi_icon 440
scoreboard players set @s[scores={class=4,healthshow=1..,plutospike=1..}] chibi_icon 420
scoreboard players set @s[scores={class=4,healthshow=1..,fire_time_effect=1..}] chibi_icon 404
scoreboard players set @s[scores={class=4,healthshow=1..,glowing=1..}] chibi_icon 403

scoreboard players set @s[scores={class=6,healthshow=1..,invisoff=..-2}] chibi_icon 601
scoreboard players set @s[scores={class=6,healthshow=1..,particles=1..}] chibi_icon 602
scoreboard players set @s[scores={class=6,healthshow=1..,invisoff=-1..}] chibi_icon 600
#scoreboard players set @s[scores={class=6,healthshow=1..,fire_time_effect=1..}] chibi_icon 604
scoreboard players set @s[scores={class=6,healthshow=1..,glowing=1..}] chibi_icon 603

execute as @s[scores={chibi_icon=1}] at @s run function game:players/health_bar_macro {"icon":0001}
execute as @s[scores={chibi_icon=2}] at @s run function game:players/health_bar_macro {"icon":0002}

execute as @s[scores={chibi_icon=100}] at @s run function game:players/health_bar_macro {"icon":0100}
execute as @s[scores={chibi_icon=101}] at @s run function game:players/health_bar_macro {"icon":0101}
execute as @s[scores={chibi_icon=102}] at @s run function game:players/health_bar_macro {"icon":0102}
execute as @s[scores={chibi_icon=103}] at @s run function game:players/health_bar_macro {"icon":0103}
execute as @s[scores={chibi_icon=104}] at @s run function game:players/health_bar_macro {"icon":0104}
execute as @s[scores={chibi_icon=110}] at @s run function game:players/health_bar_macro {"icon":0110}
execute as @s[scores={chibi_icon=120}] at @s run function game:players/health_bar_macro {"icon":0120}

execute as @s[scores={chibi_icon=401}] at @s run function game:players/health_bar_macro {"icon":0401}
execute as @s[scores={chibi_icon=402}] at @s run function game:players/health_bar_macro {"icon":0402}
execute as @s[scores={chibi_icon=410}] at @s run function game:players/health_bar_macro {"icon":0410}
execute as @s[scores={chibi_icon=430}] at @s run function game:players/health_bar_macro {"icon":0430}
execute as @s[scores={chibi_icon=400}] at @s run function game:players/health_bar_macro {"icon":0400}
execute as @s[scores={chibi_icon=440}] at @s run function game:players/health_bar_macro {"icon":0440}
execute as @s[scores={chibi_icon=450}] at @s run function game:players/health_bar_macro {"icon":0450}
execute as @s[scores={chibi_icon=420}] at @s run function game:players/health_bar_macro {"icon":0420}
execute as @s[scores={chibi_icon=403}] at @s run function game:players/health_bar_macro {"icon":0403}
execute as @s[scores={chibi_icon=404}] at @s run function game:players/health_bar_macro {"icon":0404}

execute as @s[scores={chibi_icon=600}] at @s run function game:players/health_bar_macro {"icon":0600}
execute as @s[scores={chibi_icon=601}] at @s run function game:players/health_bar_macro {"icon":0601}
execute as @s[scores={chibi_icon=602}] at @s run function game:players/health_bar_macro {"icon":0602}
execute as @s[scores={chibi_icon=603}] at @s run function game:players/health_bar_macro {"icon":0603}
execute as @s[scores={chibi_icon=604}] at @s run function game:players/health_bar_macro {"icon":0604}
execute as @s[scores={chibi_icon=610}] at @s run function game:players/health_bar_macro {"icon":0610}
execute as @s[scores={chibi_icon=620}] at @s run function game:players/health_bar_macro {"icon":0620}

## Dies and REspawns
scoreboard players set @s[scores={healthshow=..0},tag=!arena] respawn 221

#arena
tp @s[scores={healthshow=..0},tag=arena] -122 57 42 180 0
scoreboard players set @s[scores={healthshow=..0},tag=arena] Mana 5
scoreboard players set @s[scores={healthshow=..0},tag=arena] wtimer 0
scoreboard players set @s[scores={healthshow=..0},tag=arena] btimer 0

effect give @s[scores={healthshow=..0},tag=arena] minecraft:blindness 1 0 true
execute as @s[scores={healthshow=..0},tag=arena] at @s run playsound minecraft:entity.wither.hurt master @s
scoreboard players set @s[scores={healthshow=..0}] healthshow 100

item replace entity @s[tag=!spiritworld,scores={item=2,class=2}] armor.head with minecraft:melon_seeds[custom_name='{"text":"Mask"}']
item replace entity @s[tag=!spiritworld,scores={item=2,class=4}] armor.head with minecraft:gold_nugget[custom_name='{"text":"Mask"}']
item replace entity @s[tag=!spiritworld,scores={item=2,class=1}] armor.head with minecraft:pink_dye[custom_name='{"text":"Mask"}']
item replace entity @s[tag=!spiritworld,scores={item=2,class=3}] armor.head with minecraft:cyan_dye[custom_name='{"text":"Mask"}']
item replace entity @s[tag=!spiritworld,scores={item=2,class=5}] armor.head with minecraft:light_gray_dye[custom_name='{"text":"Mask"}']
item replace entity @s[tag=!spiritworld,scores={item=2,class=6}] armor.head with minecraft:gray_dye[custom_name='{"text":"Mask"}']
clear @s[tag=!spiritworld,scores={item=2},nbt=!{Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] golden_boots
item replace entity @s[tag=!spiritworld,scores={item=2},nbt=!{Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] armor.feet with golden_boots[custom_name='{"text":" "}',unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}] 1
item replace entity @s[scores={item=..1}] armor.head with minecraft:air
item replace entity @s[scores={item=..1}] armor.feet with minecraft:air

clear @s[tag=!spiritworld,nbt=!{Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] golden_leggings
item replace entity @s[tag=!spiritworld,nbt=!{Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] armor.legs with golden_leggings[custom_name='{"text":" "}',unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:swift_sneak":1},show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_multiplied_base",slot:"any"}],show_in_tooltip:false}] 1

scoreboard players set @s item 0

#nametag
scoreboard players add @s noname 0
team join noname @s[scores={noname=0..},tag=!lobby]
team leave @s[scores={noname=-1}]
scoreboard players remove @s[scores={noname=-1..}] noname 1