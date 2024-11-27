#soul send
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:flint"}}] Mana 5
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:flint"}}] soul_send_cooldown 12
execute as @s[nbt={SelectedItem:{id:"minecraft:flint"}}] at @s run function game:characters/pluto/spells/soulsend

#regen
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] Mana 4
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] plutoregen 60
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] fire_time_effect -1

#spike
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] Mana 7
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] plutospike 20
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] shadow_cool 52
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] invisoff 22
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] at @s run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 1 0
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] at @s run playsound minecraft:entity.ghast.death master @a ~ ~ ~ 1 2
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] at @s run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 0.3 2
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 1.4
execute as @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] at @s run playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 0
clear @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] sugar_cane

#jump pad
execute as @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:0,Invulnerable:1,Tags:["jp"],Invisible:1,ArmorItems:[{},{},{},{count:1,id:sea_pickle}],DisabledSlots:4144959}
execute as @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] at @s run tp @e[tag=jp,distance=...1,limit=1,sort=nearest] @p
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] Mana 3
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] cooljp 140
execute as @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] at @s run function game:spells/manaup
clear @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] bowl