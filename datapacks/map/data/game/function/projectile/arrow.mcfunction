scoreboard players add @s timer 1

execute store result score @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] motx run data get entity @s Motion[0] 100
execute store result score @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] moty run data get entity @s Motion[1] 100
execute store result score @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] motz run data get entity @s Motion[2] 100
execute as @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] at @s run tp @s ~ ~50 ~ ~ ~
execute as @s at @s run execute store result entity @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] Motion[0] double .01 run scoreboard players get @s motx
execute as @s at @s run execute store result entity @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] Motion[1] double .01 run scoreboard players get @s moty
execute as @s at @s run execute store result entity @s[scores={timer=1},tag=harrow,nbt={inGround:0b,Fire:-1s}] Motion[2] double .01 run scoreboard players get @s motz

execute store result score @s[scores={timer=1},nbt={inGround:0b},tag=harrow] dx run data get entity @s Pos[0] 10000
execute store result score @s[scores={timer=1},nbt={inGround:0b},tag=harrow] dy run data get entity @s Pos[1] 10000
execute store result score @s[scores={timer=1},nbt={inGround:0b},tag=harrow] dz run data get entity @s Pos[2] 10000

execute as @s[scores={timer=2..},nbt={inGround:0b,Fire:-1s},tag=harrow] at @s run function game:projectile/ghostarrow

execute as @s at @s run data merge entity @s {Crit:0b}
execute as @e[type=arrow,nbt={pickup:1b}] run data merge entity @s {pickup:0b}

kill @s[nbt={inGround:1b}]

kill @s[scores={timer=400..}]