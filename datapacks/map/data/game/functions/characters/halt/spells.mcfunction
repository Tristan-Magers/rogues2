#dagger
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:feather"}}] wtimer 9999
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:feather"}}] Mana 3
execute as @s[nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run replaceitem entity @s hotbar.0 minecraft:stone_sword{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.58,Operation:0,UUID:[I;170452042,-618446418,-1993398134,2121527740]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-2116117351,-814987369,-1539314661,1434952524]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:2,UUID:[I;-1794733450,173426169,-1787019437,449822666]}],display:{Name:"[{\"text\":\"Draining Claw\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"16 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\") (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Boost on hit\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\")\",\"color\":\"white\",\"italic\":\"false\"}]"}}

#hover
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] hover 40
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1 0
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .7
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .4
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] Mana 4

#lethal shot
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:nether_brick"}}] btimer 1
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:nether_brick"}}] Mana 9
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_brick"}}] at @s run replaceitem entity @s hotbar.1 minecraft:bow{Damage:80,Unbreakable:1b,display:{Name:"[{\"text\":\"Ghost Bow\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Shoot through walls\",\"color\":\"gray\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"7 Damage\",\"color\":\"red\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}} 1

#summon spider

#web
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,CustomName:"\"web\"",Invisible:1,Duration:999999}
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run tp @e[name=web,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run scoreboard players set @e[name=web,distance=...1,limit=1,sort=nearest] move 1
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run execute as @e[name=web,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run tp @s ~ ~1.45 ~
#execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run execute as @e[name=web,distance=..2,limit=1,sort=nearest,scores={move=1}] at @s run function game:faceaway
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] Mana 5
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 1.4
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 .5

#spider
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run summon minecraft:cave_spider ~ ~ ~ {NoAI:1,Health:8.0}
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run tp @e[type=cave_spider,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run scoreboard players operation @e[type=cave_spider,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] at @s run execute as @e[type=cave_spider,distance=...2,limit=1,sort=nearest] at @s run tp @s ~ ~.2 ~ ~ 0
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] Mana 5