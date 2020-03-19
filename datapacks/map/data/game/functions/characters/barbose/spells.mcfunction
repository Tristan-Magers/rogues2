#axe
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] wtimer 61
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] Mana 4
execute as @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] at @s run replaceitem entity @s hotbar.0 minecraft:diamond_axe{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.166,Operation:2,UUIDLeast:690452,UUIDMost:338207,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:19,Operation:0,UUIDMost:82831,UUIDLeast:154830},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.5,Operation:0,UUIDMost:71176,UUIDLeast:188910}],display:{Name:"[{\"text\":\"Seeking Axe\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"20 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

#dummy
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] dummylook 65
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] Mana 5

#bomb
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:0,Invulnerable:1,Tags:["gernade"],Invisible:1,ArmorItems:[{},{},{},{Count:1,id:tnt}],DisabledSlots:4144959}
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}}] at @s run tp @e[tag=gernade,distance=...1,limit=1,sort=nearest] @p
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:leather"}}] glowing 15
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:leather"}}] Mana 6

#set portal
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run summon minecraft:evoker ~ ~ ~ {NoGravity:0,NoAI:1,Invulnerable:0,ArmorItems:[{},{},{},{Count:1,id:apple}],Health:15.0,Silent:1,Tags:["portalset"]}
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tp @e[tag=portalset,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run scoreboard players operation @e[tag=portalset,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tp @e[tag=portalset,distance=...1,limit=1,sort=nearest] ~ ~-.3 ~ ~ 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] portal 1
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] Mana 3

#go to portal
scoreboard players set @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] invisoff 50
effect give @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] blindness 3
effect give @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] slowness 2 2

execute as @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 1
execute as @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 .5

scoreboard players set @s[scores={portal=..9},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] portal 30

#boom
execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run summon minecraft:area_effect_cloud ~ ~.2 ~ {NoGravity:1,Marker:1,Invulnerable:1,Tags:["blackhole"],Invisible:1,Duration:999999}
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] Mana 8
scoreboard players operation @e[tag=blackhole,limit=1,sort=nearest] playerID = @s playerID
#title @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] title {"text":"RUN!","bold":"true"}