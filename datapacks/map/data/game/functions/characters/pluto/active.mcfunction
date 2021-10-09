execute as @s[scores={plutobow=1..}] at @s run function game:characters/pluto/spells/hurpro

execute as @s[tag=!bowreload,tag=!spiritworld,nbt=!{Inventory:[{id:"minecraft:bow",Slot:"mainhand"}]}] run item replace entity @s hotbar.0 with bow{AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.14,Operation:2,UUID:[I;-1794733450,173426169,-1787019437,449822666],Slot:"mainhand"}],Damage:20,Unbreakable:1,display:{Name:"[{\"text\":\"Hurricane\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"] (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Right-Click to throw\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"5 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Can be thrown as a projectile (7 max damage)","color":"white","italic":false}']}}
tag @s remove bowreload

clear @s[tag=spiritworld] bow

scoreboard players set @s[scores={Mana=5..}] btimer 2
scoreboard players set @s[scores={Mana=..4}] btimer -1
scoreboard players set @s plutobow 0

clear @s[scores={Mana=..4}] arrow

scoreboard players add @s[scores={plutoregen=80}] healthshow 1
scoreboard players add @s[scores={plutoregen=60}] healthshow 1
scoreboard players add @s[scores={plutoregen=40}] healthshow 1
scoreboard players add @s[scores={plutoregen=20}] healthshow 1
scoreboard players add @s[scores={plutoregen=0}] healthshow 1

execute as @s[scores={plutoregen=80}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=60}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=40}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=20}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=0}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force

scoreboard players remove @s[scores={plutoregen=0..}] plutoregen 1

#execute as @s[scores={plutospike=22}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=20}] at @s run function game:characters/pluto/spells/newspike
execute as @s[scores={plutospike=18}] at @s run function game:characters/pluto/spells/newspike
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