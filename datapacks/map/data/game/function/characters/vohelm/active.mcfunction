execute as @s[scores={goldenap=1..}] at @s run function game:characters/vohelm/spells/heal

execute as @s[scores={shield=1..}] at @s run function game:characters/vohelm/active/shield

execute as @s[tag=!spiritworld] at @s run function game:characters/vohelm/active/weapon

#execute as @s[tag=!spiritworld,scores={Mana=3..},nbt=!{Inventory:[{id:"minecraft:golden_apple",Slot:4b}]}] run item replace entity @s hotbar.4 with golden_apple[custom_name='[{"text":"Sacred Berries","color":"green","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"Heal 4","color":"red","italic":false},{"text":" / ","color":"white","italic":false},{"text":"Glow nearest enemy","color":"gray","italic":false},{"text":") [","color":"white","italic":false},{"text":"3 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]"}}
execute as @s[tag=!spiritworld,scores={Mana=5..},nbt=!{Inventory:[{id:"minecraft:golden_apple",Slot:4b}]}] run item replace entity @s hotbar.4 with golden_apple[custom_name='[{"text":"Sacred Berries","color":"green","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"Heal 5","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"5 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Heal 5 health","color":"green","italic":false}','{"text":"4 seconds of +20% speed","color":"green","italic":false}']]

attribute @s minecraft:generic.attack_damage base set 1

scoreboard players operation @e[tag=totem] playerID -= @s playerID
execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run effect give @s minecraft:jump_boost 2 1
execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run attribute @s minecraft:generic.attack_damage base set 4
#execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run attribute @s[tag=wood,nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] minecraft:generic.attack_damage base set 2
#execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run attribute @s[tag=wood,nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] minecraft:generic.attack_damage base set 3
#execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run attribute @s[tag=wood,nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] minecraft:generic.attack_damage base set 4
#execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run attribute @s[tag=wood,nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] minecraft:generic.attack_damage base set 5
#execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run attribute @s[tag=wood,nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] minecraft:generic.attack_damage base set 6
execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run execute as @e[tag=totem,distance=..8,scores={playerID=0}] at @s run particle dust{color:[1.000,0.500,0.500],scale:1} ~ ~1 ~ .3 .5 .3 0 2 force
execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run particle dust{color:[1.000,0.500,0.500],scale:1} ~ ~1 ~ .3 .5 .3 0 2 force
execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run tag @s add totemdust
execute as @s at @s if entity @e[tag=totem,distance=..6.5,scores={playerID=0,gertimer=..9990}] run scoreboard players set @s totemres 40
execute as @s at @s run execute as @e[tag=totem,distance=6.5..,scores={playerID=0,gertimer=..9990}] at @s run scoreboard players set @s gertimer 9990
scoreboard players operation @e[tag=totem] playerID += @s playerID

effect give @s[scores={totemres=0..39}] minecraft:resistance 1

tag @s remove totemres
tag @s[scores={totemres=0..39}] add totemres

scoreboard players remove @s[scores={totemres=0..}] totemres 1

scoreboard players remove @s[scores={shieldT=0..}] shieldT 1

#
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_hoe",Slot:0b}]}] at @s run execute as @a[distance=0.01..10] run attribute @s minecraft:generic.knockback_resistance base set 0.25

#
execute as @a run attribute @s[scores={sword_boost=1..}] minecraft:generic.movement_speed base set .119
scoreboard players remove @s[scores={sword_boost=1..}] sword_boost 1