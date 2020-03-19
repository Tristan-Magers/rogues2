summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Tags:["smoker"],Invisible:1,Duration:999999}
tp @e[tag=smoker,distance=...1,limit=1,sort=nearest] @p
execute as @s[scores={dummylook=1}] at @s run tag @e[tag=smoker,distance=...1,limit=1,sort=nearest] add boom
scoreboard players set @e[tag=smoker,distance=...1,limit=1,sort=nearest] move 1
execute as @e[tag=smoker,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run tp @s ~ ~1.6 ~
