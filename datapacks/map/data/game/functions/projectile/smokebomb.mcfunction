particle minecraft:explosion ~ ~.05 ~ 0 0 0 0 1 force
scoreboard players add @s timer 1
execute as @s[scores={timer=16}] at @s run summon creeper ~ ~ ~ {ignited:1,Fuse:0,ExplosionRadius:2}
execute as @s[scores={timer=1}] at @s run playsound minecraft:entity.creeper.primed master @a
kill @s[scores={timer=16}]