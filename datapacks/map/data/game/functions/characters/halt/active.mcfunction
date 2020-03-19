effect clear @s levitation

execute as @s[tag=!spiritworld,scores={shift=1..}] at @s run function game:characters/halt/active/walldetect
execute as @s[tag=!spiritworld,scores={spiderwall=0..}] at @s run function game:characters/halt/active/wallmove
execute as @s[scores={haltboost=1..}] at @s run function game:characters/halt/active/haltboost

#clear @s[nbt=!{Inventory:[{id:"minecraft:iron_nugget",Slot:1b}]}] iron_nugget
#execute as @s[nbt=!{Inventory:[{id:"minecraft:iron_nugget",Slot:1b}]}] run replaceitem entity @s hotbar.1 iron_nugget{display:{Name:"[{\"text\":\"Hover\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Hold to use\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\")\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={hover=1..}] at @s run function game:characters/halt/active/hover
execute as @s[scores={hover=0}] at @s run effect clear @s levitation
scoreboard players set @s[scores={hover=0}] invisoff 8

scoreboard players remove @s hover 1

execute as @s[scores={hover=-1}] at @s run function game:spells/manaup


scoreboard players add @s[scores={haltdamage=40..}] healthshow 1
scoreboard players add @s[scores={haltdamage=50..}] healthshow 1
scoreboard players add @s[scores={haltdamage=60..}] healthshow 1
scoreboard players add @s[scores={haltdamage=70..}] healthshow 1

execute as @s[scores={haltdamage=40..49}] at @s anchored eyes run summon minecraft:armor_stand ~ ~-.3 ~ {Marker:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+1"}'}
execute as @s[scores={haltdamage=50..59}] at @s anchored eyes run summon minecraft:armor_stand ~ ~-.3 ~ {Marker:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+2"}'}
execute as @s[scores={haltdamage=60..69}] at @s anchored eyes run summon minecraft:armor_stand ~ ~-.3 ~ {Marker:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+3"}'}
execute as @s[scores={haltdamage=70..}] at @s anchored eyes run summon minecraft:armor_stand ~ ~-.3 ~ {Marker:1,Invulnerable:1,Tags:["damnum","plus"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"+4"}'}

scoreboard players set @s haltdamage 0