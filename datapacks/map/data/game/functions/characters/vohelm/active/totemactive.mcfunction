scoreboard players add @s gertimer 1

execute as @s[scores={gertimer=1}] at @s run tp @s ~ ~1 ~

execute as @s[scores={gertimer=1}] at @s run function game:characters/vohelm/spells/totemstart

#execute as @s[scores={gertimer=32}] at @s run summon creeper ~ ~.8 ~ {ingited:1,Fuse:0,ExplosionRadius:2}

#kill @s[scores={gertimer=32..}]