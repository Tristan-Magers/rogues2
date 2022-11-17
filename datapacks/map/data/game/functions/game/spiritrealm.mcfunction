execute as @s[tag=!spiritworld,tag=spiritnoob] at @s run scoreboard players set @s spiritcutscene 20
execute as @s[tag=!spiritworld] at @s run title @s times 10 20 10
execute as @s[tag=!spiritworld] at @s run title @s title [{"text":"Spirit ","color":"dark_aqua"},{"text":"Realm","color":"dark_aqua"}]
execute as @s[tag=!spiritworld] at @s run title @s subtitle [{"text":"Home of souls","color":"aqua"}]
execute as @s[tag=!spiritworld] at @s run tp @s[tag=!spiritnoob] 69 38.05 -30 180 0

tp @s[scores={spiritcutscene=20}] 69 45 -32 180 40
tp @s[scores={spiritcutscene=2..19}] ~ ~-.37 ~0.11 180 ~-2
tp @s[scores={spiritcutscene=1}] 69 38.05 -30 180 0
effect give @s[scores={spiritcutscene=1..}] minecraft:slow_falling 1 10 true
execute as @s[scores={spiritcutscene=1..}] at @s run tp @s @s
tag @s[scores={spiritcutscene=1}] remove spiritnoob

tag @s add spiritworld

scoreboard players set @s walk 0
scoreboard players set @s run 0
scoreboard players set @s jump 0
scoreboard players set @s partdelay 0
scoreboard players set @s noname 50
xp set @s 0 points

tag @s[tag=game] remove spirlob
tag @s[tag=!game] add spirlob
item replace entity @s[tag=!game] hotbar.8 with air

effect clear @s minecraft:jump_boost
effect clear @s[scores={spiritcutscene=..0}] minecraft:slow_falling
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation

effect give @s minecraft:fire_resistance 1 100 true
effect give @s minecraft:resistance 2 100 true
effect give @s minecraft:weakness 1 100 true
effect give @s minecraft:invisibility 1 100 true

scoreboard players set @s Invul 40

execute as @s[x=69,y=35,z=-33,distance=..2,nbt={Fire:-20s},tag=spiritnoob] run scoreboard players set @s spiritcutscene 21
execute as @s[x=69,y=35,z=-33,distance=..2,nbt={Fire:-20s},tag=!spiritnoob] run tp @s 69 38.05 -30 180 0
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

scoreboard players set @s fire_time_effect -1

scoreboard players set @s press 0
scoreboard players set @s burnout -100
scoreboard players set @s invis 2

scoreboard players set @s[scores={trident=1..}] trident 2
scoreboard players set @s[scores={btimer=1..}] btimer 0
scoreboard players set @s[scores={wtimer=2..}] wtimer 1
scoreboard players set @s[scores={boostT=3..}] boostT 2

execute as @s[scores={points=1..}] at @s run function game:players/collect
#execute as @s[scores={points=1..,Score=1}] at @s run tellraw @a [{"selector":"@p"},{"text":" returned a soul. "},{"color":"gold","score":{"name":"@p","objective":"Score"}},{"text":"/12 point."}]

execute as @s[scores={class=3}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={class=2}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={class=2}] run item replace entity @s hotbar.0 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={class=5}] run item replace entity @s hotbar.0 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={class=5}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
#item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

scoreboard players remove @s spiritcutscene 1