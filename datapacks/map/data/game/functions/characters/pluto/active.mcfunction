execute as @s[scores={plutobow=1..}] at @s run function game:characters/pluto/spells/hurpro

execute as @s[tag=!spiritworld,nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] run replaceitem entity @s hotbar.0 bow{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.18,Operation:2,UUIDLeast:690452,UUIDMost:338207,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:7,Operation:0,UUIDMost:82831,UUIDLeast:154830},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.2,Operation:0,UUIDMost:71176,UUIDLeast:188910}],Damage:20,Unbreakable:1,display:{Name:"[{\"text\":\"Hurricane\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"8 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"] (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Right-Click to throw\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

clear @s[tag=spiritworld] bow

scoreboard players set @s[scores={Mana=3..}] btimer 2
scoreboard players set @s[scores={Mana=..2}] btimer -1
scoreboard players set @s plutobow 0

scoreboard players add @s[scores={plutoregen=60}] healthshow 1
scoreboard players add @s[scores={plutoregen=40}] healthshow 1
scoreboard players add @s[scores={plutoregen=20}] healthshow 1
scoreboard players add @s[scores={plutoregen=0}] healthshow 1

execute as @s[scores={plutoregen=60}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=40}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=20}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force
execute as @s[scores={plutoregen=0}] at @s run particle minecraft:heart ~ ~1 ~ .2 .2 .2 .5 2 force

scoreboard players remove @s[scores={plutoregen=0..}] plutoregen 1

execute as @s[scores={plutospike=22}] at @s run function game:characters/pluto/spells/newspike
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
execute as @s[scores={plutospike=0}] at @s run function game:characters/pluto/spells/newspike

execute as @s[scores={plutospike=0..}] at @s run particle minecraft:squid_ink ~ ~.23 ~ .12 .1 .12 .1 2 force

scoreboard players remove @s[scores={plutospike=0..}] plutospike 1

scoreboard players add @s[scores={portal=..5}] portal 1

execute as @s[scores={portal=2}] at @s run scoreboard players operation @e[tag=soulsend] playerID -= @s playerID
execute as @s[scores={portal=2}] at @s run kill @e[tag=soulsend,scores={playerID=0}]
execute as @s[scores={portal=2}] at @s run scoreboard players operation @e[tag=soulsend] playerID += @s playerID