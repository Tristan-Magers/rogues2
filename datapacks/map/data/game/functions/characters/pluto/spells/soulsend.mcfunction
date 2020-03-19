execute as @s at @s run summon minecraft:slime ~ ~ ~ {Health:5,Size:0,NoAI:1,NoGravity:1,Tags:["soulsend"]}
execute as @s at @s run tp @e[tag=soulsend,distance=...1,limit=1,sort=nearest] @p
team join nocol @e[tag=soulsend,distance=...1,limit=1,sort=nearest]
effect give @e[tag=soulsend,distance=...1,limit=1,sort=nearest] minecraft:resistance 999 3 true
#effect give @e[tag=soulsend,distance=...1,limit=1,sort=nearest] minecraft:glowing 999 0 true
scoreboard players operation @e[tag=soulsend,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s at @s run tp @e[tag=soulsend,distance=...1,limit=1,sort=nearest] ~ ~1.5 ~