#clear @s barrier
clear @s[scores={Mana=..4}] blaze_rod
clear @s[scores={Mana=..6,wtimer=..0}] coal
clear @s[scores={Mana=..8,btimer=..0}] charcoal
clear @s[scores={Mana=..7}] blaze_powder
clear @s[scores={Mana=..3}] brick

scoreboard players add @s burnout 0

execute as @s[scores={Mana=..5,wtimer=..0}] run item replace entity @s hotbar.0 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..7,btimer=..0}] run item replace entity @s hotbar.1 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.2 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..6}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.4 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1

execute as @s[scores={burnoutT=1..}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1

execute as @s[scores={Mana=6..,wtimer=..0},nbt=!{Inventory:[{id:"minecraft:coal",Slot:0b}]}] run item replace entity @s hotbar.0 with coal[custom_name='[{"text":"Fire Fist","color":"dark_red","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"3s","color":"green","italic":false},{"text":") [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"A fist to damage and ignite your foes","color":"white","italic":false}','{"text":"4 damage, 0.6s charge","color":"gold","italic":false}','{"text":"+26% speed","color":"green","italic":false}','{"text":"3s fire (3 damage)","color":"green","italic":false}','{"text":"Knockback (reduced)","color":"green","italic":false}','{"text":"0.4s delay","color":"red","italic":false}','{"text":"Throw/offhand to break","color":"white","italic":false}']]
execute as @s[scores={Mana=8..,btimer=..0},nbt=!{Inventory:[{id:"minecraft:charcoal",Slot:1b}]}] run item replace entity @s hotbar.1 with charcoal[custom_name='[{"text":"Flame Bow","color":"red","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"2 Arrows","color":"aqua","italic":false},{"text":") [","color":"white","italic":false},{"text":"8 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"A bow that sets players on fire!","color":"white","italic":false}','{"text":"6 max damage","color":"gold","italic":false}','{"text":"3s fire (3 damage)","color":"green","italic":false}','{"text":"Only 2 arrows","color":"red","italic":false}']]
execute as @s[scores={Mana=4..},nbt=!{Inventory:[{id:"minecraft:blaze_rod",Slot:2b}]}] run item replace entity @s hotbar.2 with blaze_rod[custom_name='[{"text":"Fire Breath","color":"dark_red","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"4 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Throws a horizontal moving fireball","color":"white","italic":false}','{"text":"Pierces walls","color":"green","italic":false}']]
execute as @s[scores={Mana=7..,burnout=..0,burnoutT=..0},nbt=!{Inventory:[{id:"minecraft:blaze_powder",Slot:3b}]}] run item replace entity @s hotbar.3 with blaze_powder[custom_name='[{"text":"Burnout","color":"red","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"7 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Dash forward!","color":"white","italic":false}','{"text":"1.5s cooldown","color":"red","italic":false}']]
execute as @s[scores={Mana=4..},nbt=!{Inventory:[{id:"minecraft:brick",Slot:4b}]}] run item replace entity @s hotbar.4 with brick[custom_name='[{"text":"Zero-Gravity","color":"dark_red","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"3s","color":"green","italic":false},{"text":") [","color":"white","italic":false},{"text":"4 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Slow falling and jump boost for 3s","color":"white","italic":false}','{"text":"Jumping causes particles","color":"red","italic":false}']]

execute as @s[scores={burnoutT=1..}] run item replace entity @s hotbar.3 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
execute as @s[scores={boostT=1..}] run item replace entity @s hotbar.4 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
clear @s[scores={boostT=..0,burnoutT=..0}] ghast_tear

execute as @s[scores={Mana=0..}] run item replace entity @s hotbar.5 with gold_ingot[custom_name='[{"text":"Healing Fire","color":"gold","italic":false,"bold":true},{"text":" (passive effect)","color":"white","italic":false,"bold":false}]',lore=['{"text":"Heal after not taking damage for 9.5s","color":"white","italic":false}','{"text":"And every 3s past that","color":"gold","italic":false}','{"text":"(heal sound only heard by you)","color":"dark_aqua","italic":false}']]
