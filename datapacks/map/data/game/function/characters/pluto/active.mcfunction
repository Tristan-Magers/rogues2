#
execute as @s at @s run function game:characters/pluto/spells/soulcount

#
execute as @s[scores={plutobow=1..}] at @s run function game:characters/pluto/spells/hurpro

execute as @s[tag=!bowreload,tag=!spiritworld,nbt=!{Inventory:[{id:"minecraft:bow",Slot:"mainhand"}]}] run item replace entity @s hotbar.0 with bow[attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:-3.13,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"any"},{id:"movement_speed",type:"movement_speed",amount:0.14,operation:"add_multiplied_total",slot:"any"}],show_in_tooltip:false},damage=20,unbreakable={show_in_tooltip:false},custom_name='[{"text":"Hurricane","color":"dark_aqua","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"7 Damage","color":"red","italic":false},{"text":"] (","color":"white","italic":false},{"text":"Right-Click to throw","color":"red","italic":false},{"text":") [","color":"white","italic":false},{"text":"5 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Can be thrown as a projectile (7 max damage)","color":"white","italic":false}','{"text":"7 damage, 1.15s charge","color":"gold","italic":false}','{"text":"+14% speed","color":"green","italic":false}','{"text":"Projectile glows and levitates players","color":"green","italic":false}','{"text":"Charge projectile for more damage and levitation","color":"white","italic":false}']]
tag @s remove bowreload

clear @s[tag=spiritworld] bow

scoreboard players set @s[scores={Mana=5..}] btimer 2
scoreboard players set @s[scores={Mana=..4}] btimer -1
scoreboard players set @s plutobow 0

clear @s[scores={Mana=..4}] arrow

scoreboard players add @s[scores={plutoregen=60}] healthshow 1
scoreboard players add @s[scores={plutoregen=30}] healthshow 1
scoreboard players add @s[scores={plutoregen=0}] healthshow 1

execute as @s[scores={plutoregen=60}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 1 force
execute as @s[scores={plutoregen=45}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 1 force
execute as @s[scores={plutoregen=30}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 1 force
execute as @s[scores={plutoregen=15}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 1 force
execute as @s[scores={plutoregen=0}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 1 force

scoreboard players remove @s[scores={plutoregen=0..}] plutoregen 1

#execute as @s[scores={plutospike=22}] at @s run function game:characters/pluto/spells/newspike
#execute as @s[scores={plutospike=20}] at @s run function game:characters/pluto/spells/newspike
#execute as @s[scores={plutospike=18}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=16}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=14}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=12}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=10}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=8}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=6}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=4}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=2}] at @s run function game:characters/pluto/spells/newspike
#execute as @s[scores={plutospike=0}] at @s run function game:characters/pluto/spells/newspike

execute as @s[scores={plutospike=0..}] at @s run particle minecraft:squid_ink ~ ~.23 ~ .12 .1 .12 .1 2 force

scoreboard players remove @s[scores={plutospike=0..}] plutospike 1

scoreboard players add @s[scores={portal=..5}] portal 1

execute as @s[scores={portal=2}] at @s run scoreboard players operation @e[tag=soulsend] playerID -= @s playerID
execute as @s[scores={portal=2}] at @s run kill @e[tag=soulsend,scores={playerID=0}]
execute as @s[scores={portal=2}] at @s run scoreboard players operation @e[tag=soulsend] playerID += @s playerID

scoreboard players remove @s[scores={cooljp=0..}] cooljp 1
execute as @s[scores={cooljp=0}] at @s run function game:spells/manaup

#
scoreboard players remove @s[scores={soul_send_cooldown=0..}] soul_send_cooldown 1