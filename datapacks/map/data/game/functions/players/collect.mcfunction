scoreboard players add @s[scores={points=1..}] Score 1
execute as @s[scores={points=1..,Score=1..12}] at @s run tellraw @a [{"selector":"@p"},{"text":" returned a soul. "},{"color":"gold","score":{"name":"@p","objective":"Score"}},{"text":"/12 souls."}]
scoreboard players set @s[scores={Score=12..}] Score 12
execute as @s[scores={Score=12..}] at @s run scoreboard players set @e[name="Time Left"] Time 2
scoreboard players remove @s[scores={points=1..}] points 1
playsound minecraft:entity.player.levelup master @s[scores={points=0}] ~ ~ ~ 1 0.8
execute as @s[scores={points=1..,Score=1..12}] at @s run function game:players/collect