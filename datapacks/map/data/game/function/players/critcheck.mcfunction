#
attribute @s minecraft:generic.attack_speed base set 1.666
attribute @s[scores={damageCap=30..}] minecraft:generic.attack_speed base set 4

execute if score @s damageDealt > @s damageCap at @s run function game:players/crithit
scoreboard players set @s damageDealt 0