#
summon armor_stand ~ ~ ~ {Tags:["project_save_spot"],Marker:1,Invulnerable:1}
tp @e[tag=project_save_spot,limit=1,sort=nearest] @s

scoreboard players operation @e[tag=project_save_spot,limit=1,sort=nearest] playerID = @s playerID

#
summon marker ~ ~ ~ {Tags:["project","kill"]}

tag @e remove me
tag @s add me

tp @e[tag=project] @s

execute as @e[tag=project,limit=1] at @s run tp @s ~ ~1.6 ~
execute as @e[tag=project,limit=1] at @s run function game:characters/barbose/spells/project_scan
execute as @e[tag=project,limit=1,tag=!hit_barrier] at @s run function game:characters/barbose/spells/project_back
execute as @e[tag=project,limit=1,tag=!hit_barrier] at @s run scoreboard players set @s timer 0
execute as @e[tag=project,limit=1,tag=!hit_barrier] at @s run function game:characters/barbose/spells/project_fall

execute as @e[tag=project,limit=1,scores={timer=15..},tag=!hit_barrier] at @s run tp @s ~ ~ ~ facing entity @p[tag=me]
execute as @e[tag=project,limit=1,tag=!hit_barrier] at @s run function game:detection/doesfitperson

#
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run particle minecraft:squid_ink ~ ~1 ~ 0.1 0.3 0.1 0 10 force
#execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force

#
tp @s @e[tag=project,limit=1,tag=bool,tag=!hit_barrier]

execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] run effect give @s slow_falling 1 0 true

#execute as @s at @s as @a[distance=0.01..7] run playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 1 0
#execute as @s at @s as @a[distance=0.01..7] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.2

#execute as @s at @s as @a[distance=0.01..7] run playsound minecraft:entity.warden.attack_impact master @a[tag=me] ~ ~ ~ 1 0
#execute as @s at @s as @a[distance=0.01..7] run playsound minecraft:entity.enderman.teleport master @a[tag=me] ~ ~ ~ 1 1.2

#
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] run effect give @s minecraft:blindness 1 0 true

#
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.3 2
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 0.7 1.1
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.7 0.79

execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] project_cool 200
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] nocap 100
execute if entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] notele 100

#
execute unless entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run kill @e[tag=project_save_spot,limit=1,sort=nearest]
execute unless entity @e[tag=project,limit=1,tag=bool,tag=!hit_barrier] at @s run tellraw @s {"text":"Can't project out of map"}

#
kill @e[tag=project]

tag @s remove me
