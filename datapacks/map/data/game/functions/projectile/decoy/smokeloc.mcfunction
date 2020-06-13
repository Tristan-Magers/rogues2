scoreboard players add @s move 1

execute as @s[scores={move=..44}] at @s run function game:projectile/decoy/smokemove

execute as @s[scores={move=45..48}] at @s run function game:projectile/decoy/smokeexplode

execute as @s[scores={healthreal=..18,move=..44}] at @s run function game:projectile/decoy/smokedie

kill @s[scores={move=48..}]