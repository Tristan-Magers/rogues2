tag @s add spiritworld

tag @s[tag=game] remove spirlob
tag @s[tag=!game] add spirlob
replaceitem entity @s[tag=!game] hotbar.8 air

effect clear @s minecraft:jump_boost
effect clear @s minecraft:slow_falling
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation

effect give @s minecraft:fire_resistance 1 100 true
effect give @s minecraft:resistance 1 100 true
effect give @s minecraft:weakness 1 100 true
effect give @s minecraft:invisibility 1 100 true

execute as @s[x=69,y=35,z=-33,distance=..2,nbt={Fire:-20s}] run tp @s 69 38.3 -30 180 0
execute as @s[nbt=!{Fire:-20s}] run tp 69 35 -33

clear @s nether_star

scoreboard players add @s soulheal 1
scoreboard players add @s[scores={soulheal=7..}] healthshow 1
scoreboard players set @s[scores={soulheal=7..}] soulheal 0

scoreboard players set @s dummylook -99
scoreboard players set @s portal -2

scoreboard players set @s plutospike -1
scoreboard players set @s plutoregen -1

scoreboard players set @s poison -1
scoreboard players set @s poison2 -1

scoreboard players set @s press 0
scoreboard players set @s burnout -100
scoreboard players set @s invis 2

scoreboard players set @s[scores={trident=1..}] trident 2
scoreboard players set @s[scores={btimer=1..}] btimer 0
scoreboard players set @s[scores={wtimer=2..}] wtimer 1
scoreboard players set @s[scores={boostT=3..}] boostT 2

execute as @s[scores={points=1..}] at @s run function game:players/collect
#execute as @s[scores={points=1..,Score=1}] at @s run tellraw @a [{"selector":"@p"},{"text":" returned a soul. "},{"color":"gold","score":{"name":"@p","objective":"Score"}},{"text":"/12 point."}]

execute as @s[scores={class=3}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={class=2}] run replaceitem entity @s hotbar.4 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={class=2}] run replaceitem entity @s hotbar.0 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={class=5}] run replaceitem entity @s hotbar.0 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={class=5}] run replaceitem entity @s hotbar.1 barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

replaceitem entity @s armor.head air
replaceitem entity @s armor.chest air
replaceitem entity @s armor.legs air
replaceitem entity @s armor.feet air