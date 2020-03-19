execute as @s at @s run function game:detection/doesfitperson
execute as @s[tag=!bool] at @s run tp @s ^ ^ ^-.05
scoreboard players remove @s stepcount 1
execute as @s[tag=!bool,scores={stepcount=0..}] at @s run function game:projectile/soulbacktrack
