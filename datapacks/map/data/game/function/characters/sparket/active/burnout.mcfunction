tag @s[scores={burnout=1..}] remove burn
#execute as @s[scores={burnout=1..}] at @s positioned ^ ^ ^.6 if block ~.35 ~ ~.35 air if block ~-.35 ~ ~-.35 air if block ~.35 ~1.8 ~.35 air if block ~-.35 ~1.8 ~-.35 air run tag @s add burn
#scoreboard players set @s[scores={burnout=1..},tag=!burn] burnout 1

execute as @s[scores={burnout=1..}] at @s run function game:wallmove

effect give @s[scores={burnout=3..}] minecraft:slow_falling 1 0 true
effect clear @s[scores={burnout=1,boostT=..0}] minecraft:slow_falling
effect clear @s[scores={burnout=19},gamemode=adventure] minecraft:slowness
effect give @s[scores={burnout=1},gamemode=adventure] minecraft:slowness 1 1
scoreboard players remove @s burnout 1
scoreboard players set @s invisoff 13

execute as @s[scores={burnout=5}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1

execute as @s[scores={boostpart=1..,boostT=1..}] at @s run particle minecraft:flame ~ ~.5 ~ .2 .2 .2 0 1 force
execute as @s[scores={burnout=1..}] at @s run particle minecraft:dripping_lava ~ ~-.1 ~ .3 .2 .3 0 3 force

execute as @s[scores={burnout=3..}] at @s run tp @s @s

#execute as @s[scores={burnout=19}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
