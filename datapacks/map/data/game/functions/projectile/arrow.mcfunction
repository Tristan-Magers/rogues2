scoreboard players add @s timer 1
execute as @s[scores={timer=2..},nbt={inGround:0b,Fire:-1s}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force

execute as @s at @s run data merge entity @s {Crit:0b}
execute as @e[type=arrow,nbt={pickup:1b}] run data merge entity @s {pickup:0b}
execute as @s[nbt={inGround:1b,Fire:-1s}] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 .05 1
execute as @s[nbt={inGround:1b,Fire:-1s}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ .5 2
execute as @s[nbt={inGround:1b,Fire:-1s}] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ .6 2
execute as @s[nbt={inGround:1b},nbt=!{Fire:-1s}] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 .1 10 force
execute as @s[nbt={inGround:1b},nbt=!{Fire:-1s}] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .02 5 force
execute as @s[nbt={inGround:1b},nbt=!{Fire:-1s}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute as @s[nbt={inGround:1b},nbt=!{Fire:-1s}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ .4 2
kill @s[nbt={inGround:1b}]