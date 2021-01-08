execute as @s[scores={goldenap=1..}] at @s run function game:characters/vohelm/spells/heal

execute as @s[scores={shield=1..}] at @s run function game:characters/vohelm/active/shield

execute as @s[tag=!spiritworld] at @s run function game:characters/vohelm/active/weapon

#execute as @s[tag=!spiritworld,scores={Mana=3..},nbt=!{Inventory:[{id:"minecraft:golden_apple",Slot:4b}]}] run replaceitem entity @s hotbar.4 golden_apple{display:{Name:"[{\"text\":\"Sacred Berries\",\"color\":\"green\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Heal 4\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\" / \",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Glow nearest enemy\",\"color\":\"gray\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[tag=!spiritworld,scores={Mana=6..},nbt=!{Inventory:[{id:"minecraft:golden_apple",Slot:4b}]}] run replaceitem entity @s hotbar.4 golden_apple{display:{Name:"[{\"text\":\"Sacred Berries\",\"color\":\"green\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Heal 7\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\" / Speed) [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

scoreboard players operation @e[tag=totem] playerID -= @s playerID
execute as @s at @s if entity @e[tag=totem,distance=..7,scores={playerID=0}] run effect give @s minecraft:jump_boost 2 2
execute as @s at @s if entity @e[tag=totem,distance=..7,scores={playerID=0}] run effect give @s minecraft:strength 2
execute as @s at @s if entity @e[tag=totem,distance=..7,scores={playerID=0}] run execute as @e[tag=totem,distance=..8,scores={playerID=0}] at @s run particle dust 1.0 0.5 0.5 1.0 ~ ~1 ~ .3 .5 .3 0 2 force
execute as @s at @s if entity @e[tag=totem,distance=..7,scores={playerID=0}] run particle dust 1.0 0.5 0.5 1.0 ~ ~.2 ~ .2 .1 .2 0 2 force
execute as @s at @s if entity @e[tag=totem,distance=..7,scores={playerID=0}] run tag @s add totemdust
execute as @s at @s if entity @e[tag=totem,distance=..7,scores={playerID=0}] run scoreboard players set @s totemres 40
execute as @s at @s run execute as @e[tag=totem,distance=7..,scores={playerID=0}] at @s run scoreboard players set @e[distance=..4,name=web] move 1045
execute as @s at @s run execute as @e[tag=totem,distance=7..,scores={playerID=0}] at @s run summon creeper ~ ~ ~ {ignited:1,Fuse:0}
execute as @s at @s run tp @e[tag=totem,distance=7..,scores={playerID=0}] ~ ~-1000 ~
scoreboard players operation @e[tag=totem] playerID += @s playerID

effect give @s[scores={totemres=1..}] minecraft:resistance 1

tag @s remove totemres
tag @s[scores={totemres=1..}] add totemres

scoreboard players remove @s[scores={totemres=1..}] totemres 1