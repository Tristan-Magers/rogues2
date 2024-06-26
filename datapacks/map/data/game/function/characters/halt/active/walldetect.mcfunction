tag @s remove in
execute as @s[nbt={OnGround:0b}] at @s anchored eyes unless block ^ ^ ^.8 air unless block ^ ^ ^.8 barrier run function game:detailin
execute as @s[nbt={OnGround:1b}] at @s anchored eyes unless block ^ ^ ^.6 air unless block ^ ^ ^.6 barrier run function game:detailin
execute as @s[tag=!in,scores={spiderwall=1..}] at @s anchored eyes unless block ^ ^ ^.91 air unless block ^ ^ ^.91 barrier run function game:detailin
execute as @s[tag=!in,scores={spiderwall=1..}] at @s positioned ~ ~.5 ~ unless block ^ ^ ^.91 air unless block ^ ^ ^.91 barrier run function game:detailin
scoreboard players set @s[tag=in] spiderwall 9