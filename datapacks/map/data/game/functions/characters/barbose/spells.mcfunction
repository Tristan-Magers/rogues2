#axe
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] wtimer 80
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] Mana 4
execute as @s[nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] at @s run item replace entity @s hotbar.0 with minecraft:diamond_axe{AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.4,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:12,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.15,Operation:2,UUID:[I;-1794733450,173426169,-1787019437,449822666],Slot:"mainhand"}],display:{Name:"[{\"text\":\"Seeking Axe\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"13 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Points towards nearest player","color":"green","italic":false}']}}

#dummy
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] dummylook 54
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] Mana 4

#bomb
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run summon minecraft:armor_stand ~ ~ ~ {Size:0,Small:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,CustomName:"\"barbomb\"",Tags:["startsb","gernade"],Invisible:1,ArmorItems:[{},{},{},{Count:1,id:tnt}],DisabledSlots:4144959}
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run scoreboard players operation @e[tag=gernade,distance=..1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run tp @e[tag=gernade,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] at @s run team join noColide @e[type=minecraft:magma_cube]
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] invisoff 9
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:leather"}},scores={Mana=6..}] Mana 6

#set portal
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run summon minecraft:evoker ~ ~ ~ {NoGravity:0,NoAI:1,Invulnerable:0,ArmorItems:[{},{},{},{Count:1,id:apple}],Health:6.0,Silent:1,Silent:1,Tags:["portalset"]}
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tp @e[tag=portalset,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run scoreboard players operation @e[tag=portalset,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tp @e[tag=portalset,distance=...1,limit=1,sort=nearest] ~ ~-.3 ~ ~ 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] portal 1
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] portalcool 12
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] Mana 3

#go to portal
scoreboard players set @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] invisoff 50
effect give @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] blindness 3
effect give @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] slowness 2 2

execute as @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 1
execute as @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 .5

scoreboard players set @s[scores={portal=..9,portalcool=..0},nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] portal 30

#boom
execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run summon minecraft:area_effect_cloud ~ ~.2 ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["blackhole"],Invisible:1,Duration:999999}
execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run scoreboard players operation @e[tag=blackhole,limit=1,sort=nearest] playerID = @s playerID
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] Mana 6
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] nocap 40
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] coolblack 140
execute as @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] at @s run function game:spells/manaup
#title @s[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] title {"text":"RUN!","bold":"true"}