tag @s remove inspec

scoreboard players add @s spectext 1
#title @s[scores={spectext=80}] actionbar [{"text":"Spectating","color":"green"},{"text":" (fly far away to leave)","color":"white"}]
scoreboard players set @s[scores={spectext=300..}] spectext 0

tag @a remove specp1
tag @a remove specp2

tag @p[tag=game] add specp1
tag @p[tag=game,tag=!specp1] add specp2

execute if entity @a[tag=specp2] run scoreboard players operation @p[tag=specp2] playerID -= @s specID
tag @a remove specpc
tag @p[tag=specp2,scores={playerID=0}] add specpc
execute if entity @a[tag=specp2] run scoreboard players operation @p[tag=specp2] playerID += @s specID

execute as @p[tag=specpc] run tag @a remove specp1
execute as @p[tag=specpc] run tag @a remove specp2
execute as @p[tag=specpc] run tag @s add specp1
execute as @p[tag=specpc] run tag @p[tag=game,tag=!specp1] add specp2

execute if entity @a[tag=specp1] run scoreboard players operation @s specID = @p[tag=specp1] playerID

tag @a remove zhealths
tag @a[tag=specp1,scores={healthshow=50..}] add zhealths
tag @a[tag=specp2,scores={healthshow=50..}] add zhealths

scoreboard players set @a[tag=zhealths] healthshow 0

scoreboard players set @a[tag=specp1,scores={class=1,healthshow=16..}] healthshow 15
scoreboard players set @a[tag=specp1,scores={class=2,healthshow=19..}] healthshow 18
scoreboard players set @a[tag=specp1,scores={class=3,healthshow=19..}] healthshow 18
scoreboard players set @a[tag=specp1,scores={class=4,healthshow=17..}] healthshow 16
scoreboard players set @a[tag=specp1,scores={class=5,healthshow=17..}] healthshow 16
scoreboard players set @a[tag=specp1,scores={class=6,healthshow=23..}] healthshow 22

scoreboard players set @a[tag=specp2,scores={class=1,healthshow=16..}] healthshow 15
scoreboard players set @a[tag=specp2,scores={class=2,healthshow=19..}] healthshow 18
scoreboard players set @a[tag=specp2,scores={class=3,healthshow=19..}] healthshow 18
scoreboard players set @a[tag=specp2,scores={class=4,healthshow=17..}] healthshow 16
scoreboard players set @a[tag=specp2,scores={class=5,healthshow=17..}] healthshow 16
scoreboard players set @a[tag=specp2,scores={class=6,healthshow=23..}] healthshow 22

scoreboard players add @s specpart 1
scoreboard players set @s[scores={specpart=7..}] specpart 0

execute if entity @s[scores={specpart=1}] at @a[tag=specp1] run particle entity_effect ~ ~2.5 ~ 1 1 0 1 0 normal @s
execute if entity @s[scores={specpart=1}] at @a[tag=specp2] run particle entity_effect ~ ~2.5 ~ 0 0 1 1 0 normal @s

execute if entity @a[tag=specp1] run title @s actionbar [{"selector":"@p[tag=specp1]","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=specp1]","objective":"points"},"color":"dark_aqua"},{"text":"/","color":"white"},{"score":{"name":"@p[tag=specp1]","objective":"healthshow"},"color":"red"},{"text":"/","color":"white"},{"score":{"name":"@p[tag=specp1]","objective":"Mana"},"color":"gold"}]
execute if entity @a[tag=specp2] run title @s actionbar [{"selector":"@p[tag=specp1]","color":"yellow"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=specp1]","objective":"points"},"color":"dark_aqua"},{"text":"/","color":"white"},{"score":{"name":"@p[tag=specp1]","objective":"healthshow"},"color":"red"},{"text":"/","color":"white"},{"score":{"name":"@p[tag=specp1]","objective":"Mana"},"color":"gold"},{"text":"   ","color":"white"},{"selector":"@p[tag=specp2]","color":"blue"},{"text":" ","color":"white"},{"score":{"name":"@p[tag=specp2]","objective":"points"},"color":"dark_aqua"},{"text":"/","color":"white"},{"score":{"name":"@p[tag=specp2]","objective":"healthshow"},"color":"red"},{"text":"/","color":"white"},{"score":{"name":"@p[tag=specp2]","objective":"Mana"},"color":"gold"}]

scoreboard players set @a[tag=zhealths] healthshow 100

#flower
execute if entity @e[scores={map=1}] run tag @s[x=3,y=22,z=228,distance=..35] add inspec
#cave
execute if entity @e[scores={map=2}] run tag @s[x=144,y=13,z=200,distance=..38] add inspec
#snow
execute if entity @e[scores={map=3}] run tag @s[x=120,y=12,z=113,distance=..30] add inspec
#mountain
execute if entity @e[scores={map=4}] run tag @s[x=170,y=41,z=-67,distance=..50] add inspec
#island
execute if entity @e[scores={map=5}] run tag @s[x=-1032,y=53,z=-1000,distance=..50] add inspec

team join spec @s

scoreboard players set @s[tag=!inspec] Leave 1

execute unless entity @a[tag=specp1] run item replace entity @s armor.head with minecraft:air
execute if entity @a[tag=specp1,nbt=!{Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run item replace entity @s armor.head with minecraft:carved_pumpkin