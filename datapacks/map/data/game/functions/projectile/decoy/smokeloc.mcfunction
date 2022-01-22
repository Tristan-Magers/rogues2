scoreboard players add @s move 1

execute as @s[scores={move=..54}] at @s run function game:projectile/decoy/smokemove

execute as @s[scores={move=55..58}] at @s run function game:projectile/decoy/smokeexplode

execute as @s[scores={healthreal=19,move=..54}] at @s run function game:projectile/decoy/smokehit
scoreboard players set @s[tag=ded] healthreal 1
execute as @s[scores={healthreal=..18,move=..54}] at @s run function game:projectile/decoy/smokedie

tp @s[scores={move=58..}] ~ -1000 ~
kill @s[scores={move=60..}]