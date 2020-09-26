#burnout
execute as @s[scores={burnout=-10..}] at @s run function game:characters/sparket/active/burnout

#boost
scoreboard players remove @s[scores={boostT=0..}] boostT 1
scoreboard players remove @s[scores={boostpart=0..}] boostpart 1

execute as @s[scores={boostpart=0}] at @s run function game:spells/manaup

execute as @s[scores={boostpart=0..}] at @s run particle flame ~ ~.1 ~ .1 .1 .1 0.02 1 force
scoreboard players set @s[scores={boostT=0}] boostpart 0
execute as @s[scores={boostT=0}] at @s run function game:spells/manaup
execute as @s[scores={boostT=180}] at @s run function game:spells/manaup

#end boostT
execute as @s[scores={boostT=30}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 0

effect give @s[nbt={OnGround:0b},scores={boostT=1}] minecraft:slow_falling 1 0 true
scoreboard players add @s[nbt={OnGround:0b},scores={boostT=1}] boostT 1

execute as @s[scores={firefist=1..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .5 2
execute as @s[scores={firefist=1..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .6 1.6
execute as @s[scores={firefist=1..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .7 1.2

scoreboard players set @p firefist 0