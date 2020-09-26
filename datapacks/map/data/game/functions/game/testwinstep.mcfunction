execute as @p[scores={testwin=1..}] unless entity @a[scores={testwin=2..},distance=0.001..] run say @a[scores={testwin=1..}] Win
scoreboard players remove @a[scores={testwin=1..}] testwin 1
execute as @p[scores={testwin=1..}] if entity @a[scores={testwin=1..},distance=0.001..] run function game:game/testwinstep