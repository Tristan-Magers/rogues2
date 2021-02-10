effect give @s[scores={venge=300}] minecraft:night_vision 15 10 true
effect give @s[scores={venge=300}] minecraft:blindness 1 10 true
execute as @s[scores={venge=300}] at @s run particle minecraft:squid_ink ~ ~.8 ~ 1 1 1 .2 20 force
execute as @s[scores={venge=300}] at @s run execute as @a[tag=!lobby] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0
execute as @s[scores={venge=300}] at @s run execute as @a[tag=!lobby] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 1 0
execute as @s[scores={venge=300}] at @s run execute as @a[tag=!lobby] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 1 1.5
execute as @s[scores={venge=300}] at @s run execute as @a[tag=!lobby] at @s run playsound minecraft:entity.ender_dragon.shoot master @s ~ ~ ~ 0.6 0

execute as @s[scores={venge=300,class=1}] at @s run tellraw @a [{"selector":"@s"},{"text":" ("},{"text":"Sparket","color":"red"},{"text":") went "},{"text":"VENGEFUL","color":"red"}]
execute as @s[scores={venge=300,class=2}] at @s run tellraw @a [{"selector":"@s"},{"text":" ("},{"text":"Vohelm","color":"green"},{"text":") went "},{"text":"VENGEFUL","color":"red"}]
execute as @s[scores={venge=300,class=3}] at @s run tellraw @a [{"selector":"@s"},{"text":" ("},{"text":"Emma","color":"aqua"},{"text":") went "},{"text":"VENGEFUL","color":"red"}]
execute as @s[scores={venge=300,class=4}] at @s run tellraw @a [{"selector":"@s"},{"text":" ("},{"text":"Pluto","color":"green"},{"text":") went "},{"text":"VENGEFUL","color":"red"}]
execute as @s[scores={venge=300,class=5}] at @s run tellraw @a [{"selector":"@s"},{"text":" ("},{"text":"Halt","color":"gold"},{"text":") went "},{"text":"VENGEFUL","color":"red"}]
execute as @s[scores={venge=300,class=6}] at @s run tellraw @a [{"selector":"@s"},{"text":" ("},{"text":"Barbose","color":"yellow"},{"text":") went "},{"text":"VENGEFUL","color":"red"}]

scoreboard players add @s[scores={venge=1}] vengeheal 0
scoreboard players add @s vengeheal 1
scoreboard players add @s[scores={vengeheal=3}] healthshow 1
scoreboard players set @s[scores={vengeheal=14..}] vengeheal 0

execute as @s[scores={venge=0}] at @s run playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 0

scoreboard players add @s manaT 1

scoreboard players remove @s venge 1