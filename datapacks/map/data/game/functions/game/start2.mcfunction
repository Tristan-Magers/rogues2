kill @e[type=arrow]
kill @e[name=gernade,type=armor_stand]
kill @e[type=creeper]
kill @e[tag=portalset]
kill @e[name=blackhole]
kill @e[tag=sb]
kill @e[tag=totem]
kill @e[tag=jp]
kill @e[tag=hurpro]
kill @e[tag=soulsend]
kill @e[tag=head]

execute as @e[name=watermark] at @s run fill ~-8 0 ~-8 ~8 ~ ~8 air replace water

scoreboard players set @e[name=point] pointsT -999999
effect clear @e[name=point] minecraft:glowing

fill 128 10 98 138 8 88 water replace air
fill 128 10 98 138 8 88 water replace water

tag @a[tag=!lobby] remove vengeuse