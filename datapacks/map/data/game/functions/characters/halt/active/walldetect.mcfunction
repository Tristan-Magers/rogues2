tag @s remove in
execute as @s at @s anchored eyes unless block ^ ^ ^.4 air unless block ^ ^ ^.4 barrier run function game:detailin
execute as @s[tag=!in,scores={spiderwall=1..}] at @s anchored eyes unless block ^ ^ ^.61 air unless block ^ ^ ^.61 barrier run function game:detailin
execute as @s[tag=!in,scores={spiderwall=1..}] at @s positioned ~ ~.5 ~ unless block ^ ^ ^.61 air unless block ^ ^ ^.61 barrier run function game:detailin
scoreboard players set @s[tag=in] spiderwall 9