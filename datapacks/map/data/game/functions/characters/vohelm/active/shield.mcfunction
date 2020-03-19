replaceitem entity @s[scores={shield=2..}] armor.head minecraft:iron_helmet
replaceitem entity @s[scores={shield=2..}] armor.chest minecraft:iron_chestplate
replaceitem entity @s[scores={shield=2..}] armor.legs minecraft:iron_leggings
replaceitem entity @s[scores={shield=2..}] armor.feet minecraft:iron_boots

replaceitem entity @s[scores={shield=1}] armor.head air
replaceitem entity @s[scores={shield=1}] armor.chest air
replaceitem entity @s[scores={shield=1}] armor.legs air
replaceitem entity @s[scores={shield=1}] armor.feet air

execute as @s[scores={shield=1}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ .8 1.4
execute as @s[scores={shield=1}] at @s run playsound minecraft:block.coral_block.fall master @a ~ ~ ~ 1 0
execute as @s[scores={shield=1}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 .4

particle minecraft:cloud ~ ~.5 ~ .2 .2 .2 0 9 force
scoreboard players remove @s shield 1

