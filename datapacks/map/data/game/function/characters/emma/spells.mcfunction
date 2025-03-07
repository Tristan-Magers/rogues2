#water trident
execute as @s[nbt={SelectedItem:{id:"minecraft:kelp"}},scores={gettri=..-2}] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 0
execute as @s[nbt={SelectedItem:{id:"minecraft:kelp"}},scores={gettri=..-2}] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.3
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:kelp"}},scores={gettri=..-2}] Mana 6
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:kelp"}},scores={gettri=..-2}] trident 1
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:kelp"}},scores={gettri=..-2}] tridentH 3
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:kelp"}},scores={gettri=..-2}] gettri 8

#lightning shot
#effect give @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] slowness 1 0 true
execute as @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 2
execute as @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] at @s run playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1.2
execute as @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.4
scoreboard players remove @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] Mana 5
scoreboard players set @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] glowing 20
scoreboard players set @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] boltdelay 999
effect give @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] glowing 1
scoreboard players set @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] shotCharge 7
clear @s[scores={shotCharge=..-3},nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] light_blue_dye

#frost pillar
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["frostwall"],ArmorItems:[{},{},{},{count:1,id:ice}],Invisible:1}
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] at @s run tp @e[tag=frostwall,distance=...1,limit=1,sort=nearest] @p
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] Mana 3
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] at @s run playsound minecraft:item.hoe.till master @a ~ ~ ~ 1 .3

#wave
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Silent:1,Invulnerable:1,Tags:["wave"],Invisible:1}
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run tp @e[tag=wave,distance=...1,limit=1,sort=nearest] @p
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run scoreboard players operation @e[tag=wave,distance=...1,limit=1,sort=nearest] playerID = @s playerID
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}},tag=!isshift] at @s run execute as @e[tag=wave,distance=...2,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}},tag=isshift] at @s run execute as @e[tag=wave,distance=...2,limit=1,sort=nearest] at @s run tp @s ~ ~1.3 ~
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] glowing 20
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] Mana 6
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 .1
execute as @s[nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 1 1.2

#pure souls
tellraw @s[nbt={SelectedItem:{id:"minecraft:netherite_ingot"}}] {"text":"[§c§l!§r] Move is active at all times and requires no further action.\n§6Souls Heals 2 Extra."}