scoreboard players add @s gertimer 1

execute as @s[scores={gertimer=1}] at @s run tp @s ~ ~1 ~

execute as @s[scores={gertimer=1}] at @s run function game:characters/vohelm/spells/totemstart

#execute as @s[scores={gertimer=9991..10000}] at @s run effect give @s minecraft:resistance infinite 10 true

execute as @s[scores={gertimer=9991..10000}] at @s run particle minecraft:sonic_boom ~ ~0.7 ~ 0.2 0.4 0.2 1 1 force
execute as @s[scores={gertimer=9991}] at @s run playsound minecraft:item.flintandsteel.use master @a
execute as @s[scores={gertimer=9991}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.9 0
execute as @s[scores={gertimer=9991}] at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0
execute as @s[scores={gertimer=9996}] at @s run playsound minecraft:item.firecharge.use master @a
execute as @s[scores={gertimer=9994}] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2

execute as @s[scores={gertimer=10003..}] at @s run scoreboard players set @e[distance=..4,name=web] move 1046
execute as @s[scores={gertimer=10003..}] at @s run summon creeper ~ ~ ~ {ignited:1,Fuse:0,ExplosionRadius:2}
execute as @s[scores={gertimer=10003..}] at @s run tp @s ~ ~-1000 ~

effect give @s[scores={gertimer=22..}] slow_falling 999 10 true