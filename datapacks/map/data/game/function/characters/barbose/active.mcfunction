tag @s remove portaltest
tag @s[scores={portal=1}] add self

#effect give @s minecraft:speed 1 0 true
effect give @s minecraft:jump_boost 1 0 true

execute as @s[scores={portal=1}] at @s run scoreboard players operation @e[tag=portalset] playerID -= @s playerID
execute as @s[scores={portal=1}] at @s run execute as @e[tag=portalset,scores={playerID=0}] at @s run tag @p[tag=self] add portaltest
execute as @s[scores={portal=1}] at @s run scoreboard players operation @e[tag=portalset] playerID += @s playerID

execute if entity @s[scores={portal=1},tag=!portaltest] run playsound minecraft:entity.endermite.death master @s ~ ~ ~ 1 0
execute if entity @s[scores={portal=1},tag=!portaltest] run playsound minecraft:entity.enderman.death master @s ~ ~ ~ .3 1.2
execute if entity @s[scores={portal=1},tag=!portaltest] run playsound minecraft:entity.enderman.death master @s ~ ~ ~ .7 0.6
execute if entity @s[scores={portal=1},tag=!portaltest] run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 1.2

scoreboard players set @s[scores={portal=1},tag=!portaltest] portal -2
execute as @s[tag=self,tag=!portaltest] at @s run function game:spells/manaup

tag @s remove self

scoreboard players set @s diaaxehit 0

execute as @s[scores={dummylook=4..}] at @s run function game:characters/barbose/active/dummylook
scoreboard players remove @s dummylook 1

scoreboard players remove @s[scores={project_cool=0..}] project_cool 1
execute as @s[scores={project_cool=0}] at @s run function game:spells/manaup
execute as @s[scores={project_cool=101}] at @s run function game:spells/manaup
execute as @s[scores={project_cool=150}] at @s run function game:spells/manaup

execute as @s[scores={dummylook=-30}] at @s run function game:spells/manaup

execute as @s[scores={portal=..-1}] at @s run scoreboard players operation @e[tag=portalset] playerID -= @s playerID
execute as @s[scores={portal=..-1}] at @s run kill @e[tag=portalset,scores={playerID=0}]
execute as @s[scores={portal=..-1}] at @s run scoreboard players operation @e[tag=portalset] playerID += @s playerID

scoreboard players add @s[scores={portal=..-1}] portal 1

scoreboard players remove @s[scores={portal=10..}] portal 1
execute as @s[scores={portal=11..}] at @s run particle minecraft:large_smoke ~ ~1 ~ .2 .5 .2 .1 1
execute as @s[scores={portal=18}] at @s run execute as @s[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute as @s[scores={portal=10}] at @s run particle minecraft:large_smoke ~ ~1 ~ .2 .5 .2 .1 40
execute as @s[scores={portal=10}] at @s run scoreboard players operation @e[tag=portalset] playerID -= @s playerID
execute as @s[scores={portal=10}] at @s run tp @p @e[tag=portalset,limit=1,sort=nearest,scores={playerID=0}]
execute as @s[scores={portal=10}] at @s run execute as @e[tag=portalset,limit=1,sort=nearest,scores={playerID=0}] at @s run tp @p ~ ~.3 ~
execute as @s[scores={portal=10}] at @s run kill @e[tag=portalset,scores={playerID=0}]
execute as @s[scores={portal=10}] at @s run scoreboard players operation @e[tag=portalset] playerID += @s playerID
scoreboard players set @s[scores={portal=10}] portal 0

tag @a remove searcher
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add searcher
scoreboard players set @s[scores={wtimer=..2}] axe_pulse 0
scoreboard players add @s[scores={wtimer=3..}] axe_pulse 1
scoreboard players set @s[scores={axe_pulse=10..}] axe_pulse 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}},scores={axe_pulse=3}] run execute as @a[gamemode=adventure,limit=1,sort=nearest,distance=0.1..80,scores={respawn=..0}] at @s run function game:characters/barbose/active/tracker
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:3b}]},scores={portal=..0,Mana=6..}] run function game:spells/manaup

#blackhole cooldown
scoreboard players remove @s[scores={coolblack=0..}] coolblack 1
execute as @s[scores={coolblack=0}] at @s run function game:spells/manaup

scoreboard players remove @s[scores={portalcool=-1..}] portalcool 1

#correct axe
clear @s[scores={wtimer=3..},nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] diamond_axe
scoreboard players set @s[scores={wtimer=3..},nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}] wtimer 2