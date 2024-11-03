scoreboard players operation @e[tag=project_save_spot] playerID -= @s playerID

execute as @s[scores={healthshow=1..},tag=!project_cancel] at @s if entity @e[tag=project_save_spot,scores={playerID=0}] run clear @s
execute as @s[scores={healthshow=1..},tag=!project_cancel] at @s if entity @e[tag=project_save_spot,scores={playerID=0}] run summon skeleton ~ ~ ~ {NoAI:1,Invulnerable:1,Fire:9000}
execute as @s[scores={healthshow=1..},tag=!project_cancel] at @s if entity @e[tag=project_save_spot,scores={playerID=0}] positioned ~ ~.5 ~ run tp @e[distance=..1,type=minecraft:skeleton] @s

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:rabbit_hide"}}] if entity @e[tag=project_save_spot,scores={playerID=0},tag=!project_cancel] run tellraw @a [{"text":"* ","color":"white"},{"selector":"@s"},{"text":" ("},{"text":"Barbose","color":"yellow"},{"text":") Died","color":"white"}]
scoreboard players set @e[tag=project_save_spot,scores={playerID=0}] timer 1000

scoreboard players operation @e[tag=project_save_spot] playerID += @s playerID

function game:spells/manaup