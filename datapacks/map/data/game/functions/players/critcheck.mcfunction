## detect crits/detect damage you did
## NOTE: totemres=40 is used as jank way to detect if totem strength
scoreboard players set @s damageCap 20
scoreboard players set @s[scores={class=1},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] damageCap 50
scoreboard players set @s[scores={class=2},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] damageCap 30
scoreboard players set @s[scores={class=2},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] damageCap 40
scoreboard players set @s[scores={class=2},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] damageCap 50
scoreboard players set @s[scores={class=2},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] damageCap 60
scoreboard players set @s[scores={class=2},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] damageCap 70
scoreboard players set @s[scores={class=2,totemres=39},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] damageCap 60
scoreboard players set @s[scores={class=2,totemres=39},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] damageCap 80
scoreboard players set @s[scores={class=2,totemres=39},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] damageCap 90
scoreboard players set @s[scores={class=2,totemres=39},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] damageCap 100
scoreboard players set @s[scores={class=2,totemres=39},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] damageCap 110
scoreboard players set @s[scores={class=3},nbt={SelectedItem:{id:"minecraft:trident"}}] damageCap 70
scoreboard players set @s[scores={class=3,manaboost=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] damageCap 100
scoreboard players set @s[scores={class=4},nbt={SelectedItem:{id:"minecraft:bow"}}] damageCap 70
scoreboard players set @s[scores={class=5},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] damageCap 120
scoreboard players set @s[scores={class=6},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] damageCap 120

attribute @s minecraft:generic.attack_speed base set 1.666
attribute @s[scores={damageCap=30..}] minecraft:generic.attack_speed base set 4

execute if score @s damageDealt > @s damageCap at @s run function game:players/crithit
scoreboard players set @s damageDealt 0