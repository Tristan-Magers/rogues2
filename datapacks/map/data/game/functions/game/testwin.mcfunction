execute as @a[tag=ingame] run scoreboard players operation @s testwin = @s points

execute unless entity @a[scores={testwin=1..}] run say @a[tag=ingame] Win

function game:game/testwinstep