#axe
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] wtimer 80
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] Mana 4
execute as @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] at @s run item replace entity @s hotbar.0 with minecraft:diamond_axe[attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:-3.4,operation:"add_value",slot:"any"},{id:"attack_damage",type:"generic.attack_damage",amount:11,operation:"add_value",slot:"any"},{id:"movement_speed",type:"generic.movement_speed",amount:0.13,operation:"add_multiplied_total",slot:"any"}],custom_name='[{"text":"Seeking Axe","color":"yellow","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"12 Damage","color":"red","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Points towards nearest player","color":"green","italic":false}']]

#project
execute as @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] at @s run function game:characters/barbose/spells/project
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] project_cool 200
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] nocap 100
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] notele 100
clear @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] green_dye

#dummy (replaced with project)
#scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] dummylook 54
#scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] Mana 4

#bomb
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Size:0,Small:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,CustomName:'{"text":"barbomb"}',Tags:["startsb","gernade"],Invisible:1,ArmorItems:[{},{},{},{count:1,id:tnt}],DisabledSlots:4144959}
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run scoreboard players operation @e[tag=gernade,distance=..1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run tp @e[tag=gernade,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run team join noColide @e[type=minecraft:magma_cube]
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] invisoff 9
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] Mana 6

#set portal
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run summon minecraft:evoker ~ ~ ~ {NoGravity:0,NoAI:1,Invulnerable:0,ArmorItems:[{},{},{},{count:1,id:apple}],Health:6.0,Silent:1,Silent:1,Tags:["portalset"]}
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tp @e[tag=portalset,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run scoreboard players operation @e[tag=portalset,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tp @e[tag=portalset,distance=...1,limit=1,sort=nearest] ~ ~-.3 ~ ~ 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] portal 1
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] portalcool 12
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] Mana 3
clear @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] red_dye

#go to portal
scoreboard players set @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] invisoff 70
effect give @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] darkness 3
effect give @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] slowness 2 6

execute as @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 1
execute as @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 .5

scoreboard players set @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] portal 50

#wall
execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run function game:characters/barbose/spells/smoke_wall_start
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] Mana 4
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] coolblack 145
execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run function game:spells/manaup
clear @s[scores={coolblack=1..}] ink_sac

#boom (replaced blackhole with wall)
#execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run summon minecraft:area_effect_cloud ~ ~.2 ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["blackhole"],Invisible:1,Duration:999999}
#execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run scoreboard players operation @e[tag=blackhole,limit=1,sort=nearest] playerID = @s playerID
#scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] Mana 6
#scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] nocap 40
#scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] coolblack 140
#execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run function game:spells/manaup