summon minecraft:armor_stand ~ ~ ~ {Marker:1,Silent:1,Silent:1,Silent:1,Silent:1,Invisible:1b,Invulnerable:1,Tags:["damnum"],CustomNameVisible:1b,Duration:999999,CustomName:'{"text":"-1"}'}
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~1 ~ .3 .8 .3 2 20 force
playsound minecraft:entity.player.hurt master @a

scoreboard players remove @s healthshow 1

scoreboard players set @s fireheal -120
scoreboard players set @s plutoregen -1

clear @s golden_apple
clear @s potion[custom_data={StormEnergy:1}]