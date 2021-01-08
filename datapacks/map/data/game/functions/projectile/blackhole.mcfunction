scoreboard players add @s timer 1

execute as @s[scores={timer=1}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 1.3
#execute as @s[scores={timer=1}] at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .5 0
execute as @s[scores={timer=1}] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 2
execute as @s[scores={timer=1}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0
execute as @s[scores={timer=4}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ .8 .5
execute as @s[scores={timer=7}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ .6 1
execute as @s[scores={timer=10}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ .4 1.5
execute as @s[scores={timer=13}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ .2 2
execute as @s[scores={timer=14..18}] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 1
execute as @s[scores={timer=17}] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 1 1
execute as @s[scores={timer=19}] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 1 0
execute as @s[scores={timer=20}] at @s run playsound minecraft:entity.generic.explode master @a

execute as @s at @s run particle minecraft:crit ~ ~1 ~ .2 .2 .2 0 3 force
execute as @s[scores={timer=..20}] at @s run particle minecraft:nautilus ~ ~1 ~ 1 1 1 0 2 force
#execute as @s[scores={timer=16}] at @s run particle minecraft:flash ~ ~1 ~ 2 2 2 0 20 force
execute as @s[scores={timer=26}] at @s run particle minecraft:flash ~ ~1 ~ 2 2 2 0 20 force
execute as @s[scores={timer=36}] at @s run particle minecraft:flash ~ ~1 ~ 2 2 2 0 20 force
execute as @s[scores={timer=46}] at @s run particle minecraft:flash ~ ~1 ~ 2 2 2 0 20 force

#execute as @s[scores={timer=14}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
execute as @s[scores={timer=24}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
execute as @s[scores={timer=34}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
execute as @s[scores={timer=44}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0

tag @a remove isthrow

scoreboard players operation @a playerID -= @s playerID
tag @a[scores={playerID=0}] add isthrow
scoreboard players operation @a playerID += @s playerID

#execute as @s[scores={timer=16}] at @s run effect give @a[distance=..3,tag=!isthrow] minecraft:instant_damage 1
execute as @s[scores={timer=26}] at @s run effect give @a[distance=..3,tag=!isthrow] minecraft:instant_damage 1
execute as @s[scores={timer=36}] at @s run effect give @a[distance=..3,tag=!isthrow] minecraft:instant_damage 1
execute as @s[scores={timer=46}] at @s run effect give @a[distance=..3,tag=!isthrow] minecraft:instant_damage 1

execute as @s[scores={timer=06}] at @s run title @a[distance=..3,tag=!isthrow] title {"text":"RUN!","bold":"true"}
execute as @s[scores={timer=16}] at @s run title @a[distance=..3,tag=!isthrow] title {"text":"RUN!","bold":"true"}
execute as @s[scores={timer=26}] at @s run title @a[distance=..3,tag=!isthrow] title {"text":"RUN!","bold":"true"}
execute as @s[scores={timer=36}] at @s run title @a[distance=..3,tag=!isthrow] title {"text":"RUN!","bold":"true"}

kill @s[scores={timer=46..}]