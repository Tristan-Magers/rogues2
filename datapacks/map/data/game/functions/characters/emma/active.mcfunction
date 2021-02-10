scoreboard players set @a[scores={gettri=..-2,trident=1},nbt=!{Inventory:[{id:"minecraft:trident",Slot:0b}]}] trident 2
execute as @a[scores={trident=2..}] at @s run function game:spells/manaup

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

execute as @s[scores={gettri=0}] run replaceitem entity @s hotbar.0 trident{Unbreaking:1}
scoreboard players remove @s gettri 1

scoreboard players remove @s manaboost 1

#scoreboard players add @s[scores={manaboost=1..}] manaT 1

execute as @s[scores={manaboost=1..}] at @s run particle minecraft:rain ~ ~.5 ~ .25 .4 .25 0 2 force

scoreboard players remove @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:4b}]}] Mana 3
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:4b}]}] manaboost 120
effect give @s[scores={manaboost=20..}] jump_boost 1 1 true
effect give @s[scores={manaboost=20..}] resistance 1 0 true
scoreboard players set @s potion 0

execute as @s[tag=!spiritworld,scores={Mana=3..},nbt=!{Inventory:[{id:"minecraft:potion",Slot:4b}]}] run replaceitem entity @s hotbar.4 potion{display:{Name:"[{\"text\":\"Storm Energy\",\"color\":\"aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Boost/Resistance/Strength\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"},CustomPotionEffects:[{Id:1b,Amplifier:1b,Duration:120,ShowParticles:1b},{Id:8b,Amplifier:1b,Duration:120,ShowParticles:1b},{Id:5b,Amplifier:0b,Duration:120,ShowParticles:1b},{Id:16b,Amplifier:0b,Duration:120,ShowParticles:0b},{Id:11b,Amplifier:0b,Duration:120,ShowParticles:1b}],Potion:"minecraft:thick"}

