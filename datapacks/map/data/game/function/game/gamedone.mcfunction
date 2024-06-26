kill @e[tag=project_save_spot]

scoreboard players set @a[scores={music1=..2109}] music1 2107
scoreboard players set @a[scores={music1=2110..}] music1 0

gamemode adventure @a[gamemode=!creative,tag=game]
tag @a[tag=ingame,tag=!lobby,gamemode=adventure,tag=!spirlob,tag=!tpno] add tpback
tp @a[tag=tpback] -128 38 54 -90 0
execute as @a[tag=tpback] at @s run playsound minecraft:entity.ender_dragon.growl master @a
effect give @a[tag=tpback] blindness 2
tag @a[tag=tpback] remove tpback

tag @a[tag=tpno] remove tpno

bossbar set minecraft:time visible false

tag @a remove game
#tag @a remove spec