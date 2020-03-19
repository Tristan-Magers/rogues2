scoreboard players set @s[scores={shift=0}] spiderwall 0
effect give @s[scores={spiderwall=1..}] levitation 1 5 true
effect give @s[scores={spiderwall=1..}] slow_falling 2 0 true
effect clear @s[scores={spiderwall=0}] levitation
effect clear @s[scores={spiderwall=0}] slow_falling
particle minecraft:item_snowball ~ ~1 ~ .2 .4 .2 0 1 force
scoreboard players remove @s spiderwall 1