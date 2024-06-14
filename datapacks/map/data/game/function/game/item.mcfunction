execute as @s[nbt={Item:{id:"minecraft:bow"}}] at @s run scoreboard players set @p btimer 10
execute as @s[nbt={Item:{id:"minecraft:wooden_sword"}}] at @s run scoreboard players set @p wtimer 1
execute as @p at @s run function game:spells/manaup
kill @s