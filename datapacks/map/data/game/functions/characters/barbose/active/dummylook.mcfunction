execute if entity @s[scores={dummylook=54}] run summon minecraft:creeper ~ ~ ~ {NoAI:1,NoGravity:1,Marker:1,Invulnerable:0,Tags:["smokerloc"],Invisible:1,Duration:999999,Silent:1}
execute if entity @s[scores={dummylook=54}] run scoreboard players operation @e[limit=1,sort=nearest,tag=smokerloc] playerID = @s playerID
execute if entity @s[scores={dummylook=54}] run tp @e[tag=smoker,distance=...1,limit=1,sort=nearest] @p
execute if entity @s[scores={dummylook=54}] run effect give @e[tag=smokerloc] minecraft:invisibility 999 0 true
execute if entity @s[scores={dummylook=54}] run effect give @e[tag=smokerloc] minecraft:instant_health 999 99 true
execute if entity @s[scores={dummylook=54}] run effect give @e[tag=smokerloc] minecraft:resistance 999 2 true
execute if entity @s[scores={dummylook=54}] run scoreboard players set @e[tag=smoker,distance=...1,limit=1,sort=nearest] move 1
execute if entity @s[scores={dummylook=54}] run execute as @e[tag=smoker,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run tp @s ~ ~1.6 ~

summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Tags:["smoker"],Invisible:1,Duration:999999}
tp @e[tag=smoker,distance=...1,limit=1,sort=nearest] @p
scoreboard players operation @e[limit=1,sort=nearest,tag=smoker] playerID = @s playerID
#execute as @s[scores={dummylook=1}] at @s run tag @e[tag=smoker,distance=...1,limit=1,sort=nearest] add boom
scoreboard players set @e[tag=smoker,distance=...1,limit=1,sort=nearest] move 1
execute as @e[tag=smoker,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run tp @s ~ ~1.6 ~
