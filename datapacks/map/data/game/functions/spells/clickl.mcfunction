execute positioned ^ ^ ^1.5 run tag @e[tag=select,distance=..2.5] add selnow
execute positioned ^ ^ ^2.5 run tag @e[tag=select,distance=..2.5] add selnow
execute positioned ^ ^ ^3.5 run tag @e[tag=select,distance=..2.5] add selnow

tag @e[sort=nearest,tag=selnow,limit=1] add selnowt
tag @e[tag=selnow,tag=!selnowt] remove selnow
tag @e[tag=selnowt] remove selnowt

execute unless entity @s[scores={class=1,selwait=..10}] if entity @e[tag=selnow,tag=sparketselect] run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 1.2
execute unless entity @s[scores={class=1,selwait=..10}] if entity @e[tag=selnow,tag=sparketselect] run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 0.7
execute unless entity @s[scores={class=2,selwait=..10}] if entity @e[tag=selnow,tag=vohelmselect] run playsound minecraft:item.shield.block master @s ~ ~ ~ 1 0.6
execute unless entity @s[scores={class=3,selwait=..10}] if entity @e[tag=selnow,tag=emmaselect] run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~ 1 0.8
execute unless entity @s[scores={class=4,selwait=..10}] if entity @e[tag=selnow,tag=plutoselect] run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ .3 1.4
execute unless entity @s[scores={class=5,selwait=..10}] if entity @e[tag=selnow,tag=haltselect] run playsound minecraft:entity.spider.hurt master @s
execute unless entity @s[scores={class=5,selwait=..10}] if entity @e[tag=selnow,tag=haltselect] run playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 1 0
execute unless entity @s[scores={class=6,selwait=..10}] if entity @e[tag=selnow,tag=barboseselect] run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 1 .3

execute unless entity @s[scores={class=1,selwait=..10}] if entity @e[tag=selnow,tag=sparketselect] run tellraw @s [{"text":"Selected: "},{"text":"Sparket","color":"red"},{"text":", fire spirit"}]
execute unless entity @s[scores={class=2,selwait=..10}] if entity @e[tag=selnow,tag=vohelmselect] run tellraw @s [{"text":"Selected: "},{"text":"Vohelm","color":"green"},{"text":", guardian spirit"}]
execute unless entity @s[scores={class=3,selwait=..10}] if entity @e[tag=selnow,tag=emmaselect] run tellraw @s [{"text":"Selected: "},{"text":"Emma","color":"aqua"},{"text":", storm spirit"}]
execute unless entity @s[scores={class=4,selwait=..10}] if entity @e[tag=selnow,tag=plutoselect] run tellraw @s [{"text":"Selected: "},{"text":"Pluto","color":"gray"},{"text":", void spirit"}]
execute unless entity @s[scores={class=5,selwait=..10}] if entity @e[tag=selnow,tag=haltselect] run tellraw @s [{"text":"Selected: "},{"text":"Halt","color":"gold"},{"text":", spider spirit"}]
execute unless entity @s[scores={class=6,selwait=..10}] if entity @e[tag=selnow,tag=barboseselect] run tellraw @s [{"text":"Selected: "},{"text":"Barbose","color":"yellow"},{"text":", fear spirit"}]

execute unless entity @s[scores={class=1,selwait=..10}] if entity @e[tag=selnow,tag=sparketselect] run scoreboard players set @s class 1
execute unless entity @s[scores={class=2,selwait=..10}] if entity @e[tag=selnow,tag=vohelmselect] run scoreboard players set @s class 2
execute unless entity @s[scores={class=3,selwait=..10}] if entity @e[tag=selnow,tag=emmaselect] run scoreboard players set @s class 3
execute unless entity @s[scores={class=4,selwait=..10}] if entity @e[tag=selnow,tag=plutoselect] run scoreboard players set @s class 4
execute unless entity @s[scores={class=5,selwait=..10}] if entity @e[tag=selnow,tag=haltselect] run scoreboard players set @s class 5
execute unless entity @s[scores={class=6,selwait=..10}] if entity @e[tag=selnow,tag=barboseselect] run scoreboard players set @s class 6

execute unless entity @s[scores={class=1,selwait=..10}] if entity @e[tag=selnow,tag=sparketselect] run scoreboard players set @s selwait 0
execute unless entity @s[scores={class=2,selwait=..10}] if entity @e[tag=selnow,tag=vohelmselect] run scoreboard players set @s selwait 0
execute unless entity @s[scores={class=3,selwait=..10}] if entity @e[tag=selnow,tag=emmaselect] run scoreboard players set @s selwait 0
execute unless entity @s[scores={class=4,selwait=..10}] if entity @e[tag=selnow,tag=plutoselect] run scoreboard players set @s selwait 0
execute unless entity @s[scores={class=5,selwait=..10}] if entity @e[tag=selnow,tag=haltselect] run scoreboard players set @s selwait 0
execute unless entity @s[scores={class=6,selwait=..10}] if entity @e[tag=selnow,tag=barboseselect] run scoreboard players set @s selwait 0

tag @e[tag=selnow] remove selnow

scoreboard players set @s pressdelay 0
scoreboard players set @s press 0

title @s[nbt={SelectedItem:{id:"minecraft:spider_eye"}}] times 0 14 10
title @s[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] times 0 14 10

playsound minecraft:block.ancient_debris.break master @s[nbt={SelectedItem:{id:"minecraft:spider_eye"}}] ~ ~ ~ 1 2
playsound minecraft:block.ancient_debris.break master @s[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] ~ ~ ~ 1 1
playsound minecraft:block.note_block.basedrum master @s[nbt={SelectedItem:{id:"minecraft:spider_eye"}}] ~ ~ ~ 1 2
playsound minecraft:block.note_block.basedrum master @s[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] ~ ~ ~ 1 1

title @s[nbt={SelectedItem:{id:"minecraft:spider_eye"}}] title {"text":"Ready","color":"dark_aqua"}
title @s[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] title {"text":"Not Ready","color":"red"}

tag @s[nbt={SelectedItem:{id:"minecraft:spider_eye"}}] add ready
tag @s[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] remove ready

title @s[nbt={SelectedItem:{id:"minecraft:iron_horse_armor"}}] title {"text":"Music Disabled","color":"red"}
title @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] title {"text":"Music Enabled","color":"dark_aqua"}

stopsound @s[nbt={SelectedItem:{id:"minecraft:iron_horse_armor"}}]
tag @s[nbt={SelectedItem:{id:"minecraft:iron_horse_armor"}}] add nomusic
tag @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] remove nomusic

playsound minecraft:block.ancient_debris.break master @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] ~ ~ ~ 1 2
playsound minecraft:block.ancient_debris.break master @s[nbt={SelectedItem:{id:"minecraft:iron_horse_armor"}}] ~ ~ ~ 1 1
playsound minecraft:block.note_block.basedrum master @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] ~ ~ ~ 1 2
playsound minecraft:block.note_block.basedrum master @s[nbt={SelectedItem:{id:"minecraft:iron_horse_armor"}}] ~ ~ ~ 1 1

scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:diamond_horse_armor"}}] loretext 180
effect give @s[nbt={SelectedItem:{id:"minecraft:diamond_horse_armor"}}] blindness 10 0 true
tellraw @s[nbt={SelectedItem:{id:"minecraft:diamond_horse_armor"}}] {"text":"\n\nWhile souls cross over, they pass just by the world of dead. Mischievous spirits play with these lost souls, grabbing them up and returning them to the spirit realm.\n\nIn legend, the life lived by a soul can be understood by which spirit is chosen to return it.\n\nAs they vigorously fight, sometimes souls touch the spirits many times. Eventually, however, every soul is returned, when the world finally decides what spirit should be the guild."}