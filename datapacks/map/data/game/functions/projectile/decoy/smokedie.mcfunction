scoreboard players operation @a playerID -= @s playerID
execute as @a[scores={playerID=0}] run me Died
scoreboard players operation @a playerID += @s playerID
playsound minecraft:entity.player.hurt master @a
particle minecraft:block minecraft:redstone_block ~ ~1 ~ .3 .8 .3 2 40 force
summon skeleton ~ ~ ~ {NoAI:1,Invulnerable:1,Fire:9000}
execute as @s[scores={healthreal=..18,move=..44}] at @s positioned ~ ~.5 ~ run tp @e[distance=..1,type=minecraft:skeleton] @s
tp @s ~ ~-1000 ~
kill @s