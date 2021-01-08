execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-1"}'}
execute as @s at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .3 .8 .3 2 20 force
execute as @s at @s run playsound minecraft:entity.player.hurt master @a

effect give @s slowness 1 0 true

scoreboard players remove @s healthshow 1