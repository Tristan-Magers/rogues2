#
scoreboard players operation @e[tag=tutorial_view] playerID -= @s playerID
kill @e[tag=tutorial_view,scores={playerID=0}]
scoreboard players operation @e[tag=tutorial_view] playerID += @s playerID

#
summon minecraft:armor_stand ~ ~ ~ {Tags:["tutorial_view","new"],Invulnerable:1,NoGravity:1,Small:1}
scoreboard players operation @e[tag=tutorial_view,tag=new,limit=1] playerID = @s playerID
tag @e[tag=tutorial_view,tag=new] remove new
