#shot delay
execute as @a[scores={shotCharge=-10..}] at @s run function game:characters/emma/active/shotdelay

execute as @e[tag=lshot] at @s run function game:projectile/bolt/lshotf
execute as @e[tag=pshot] at @s run function game:projectile/thorns/pshotmove

scoreboard players add @e[tag=lshot] shotT 1
scoreboard players add @e[tag=pshot] shotT 1

kill @e[scores={shotT=350..}]

#frost pillar
execute as @e[type=arrow] at @s run function game:projectile/arrow

#frost pillar
execute as @e[tag=frostwall] at @s run function game:projectile/frostpil

#wave
execute as @e[tag=wave] at @s run function game:projectile/wave

#blackhole
execute as @e[tag=blackhole] at @s run function game:projectile/blackhole

#fire breath projectile
execute as @e[type=armor_stand,name=Fire] at @s run function game:projectile/fireb

#web shot
execute as @e[name=web] at @s run function game:projectile/web

#smoker shot
execute as @e[tag=smoker] at @s run function game:projectile/smoke
execute as @e[tag=smokerloc] at @s run function game:projectile/smokeloc
kill @e[tag=smoker]

#portal
execute as @e[tag=portalset] at @s run particle minecraft:witch ~ ~.5 ~ .2 .3 .2 0 1 force

#smoke bomb
execute as @e[tag=sb] at @s run function game:projectile/smokebomb

#hurricane
execute as @e[tag=hurpro] at @s run function game:projectile/hurpro

#soul send
execute as @e[tag=soulsend] at @s run function game:projectile/soulsend
execute as @e[tag=soulsend] at @s run function game:projectile/soulsend

#totem
execute as @e[tag=totem] at @s run function game:characters/vohelm/active/totemactive

#gernade
execute as @e[tag=gernade] at @s run function game:characters/barbose/active/geractive

#jump pad
execute as @e[tag=jp] at @s run function game:characters/pluto/spells/jpactive

#spider
execute as @e[type=cave_spider] at @s run function game:characters/halt/active/spider

#trident
execute as @e[type=trident] at @s run function game:projectile/trident

#spike
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
execute as @e[tag=spike] at @s run function game:characters/pluto/spells/spikeshot
