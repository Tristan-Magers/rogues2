clear @s barrier
clear @s[scores={Mana=..5}] flint
clear @s[scores={Mana=..7}] sugar_cane
clear @s[scores={Mana=..4}] yellow_dye
clear @s[scores={Mana=..3}] bowl

execute as @s[scores={Mana=..4,soul_send_cooldown=..0}] run item replace entity @s hotbar.2 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..6}] run item replace entity @s hotbar.1 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.4 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..2}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1

execute as @s[scores={Mana=5..,soul_send_cooldown=..0}] run item replace entity @s hotbar.2 with flint[custom_name='[{"text":"Soul Send","color":"blue","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"5 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Throws a moving orb you will teleport to","color":"white","italic":false}','{"text":"Makes you visible 1.5s","color":"red","italic":false}','{"text":"2 health","color":"red","italic":false}','{"text":"Damages you 2 if killed","color":"red","italic":false}','{"text":"0.6s cooldown","color":"red","italic":false}']]
execute as @s[scores={Mana=7..,shadow_cool=..0}] run item replace entity @s hotbar.1 with sugar_cane[custom_name='[{"text":"Shadow Spikes","color":"blue","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"7 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Fires 7, 1 damage spikes","color":"white","italic":false}','{"text":"Makes you visible 1.1s","color":"red","italic":false}','{"text":"0.2s delay","color":"red","italic":false}','{"text":"2.6s cooldown","color":"red","italic":false}']]
execute as @s[scores={Mana=4..}] run item replace entity @s hotbar.4 with yellow_dye[custom_name='[{"text":"Regenerate","color":"red","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"4 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Heals 3 health over 3s","color":"white","italic":false}','{"text":"Puts out fire","color":"green","italic":false}','{"text":"Causes particles","color":"red","italic":false}','{"text":"Taking damage stops healing","color":"red","italic":false}']]
execute as @s[scores={Mana=3..,cooljp=..0}] run item replace entity @s hotbar.3 with bowl[custom_name='[{"text":"Jump Pad","color":"dark_aqua","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"3 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Throw a jump pad","color":"white","italic":false}','{"text":"Reveals players it touches","color":"green","italic":false}','{"text":"Lasts 7s","color":"white","italic":false}','{"text":"7s cooldown","color":"red","italic":false}']]

execute as @s[scores={shadow_cool=1..}] run item replace entity @s hotbar.1 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1

execute as @s[scores={soul_send_cooldown=1..}] run item replace entity @s hotbar.2 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
execute as @s[scores={cooljp=1..}] run item replace entity @s hotbar.3 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
clear @s[scores={cooljp=..0,soul_send_cooldown=..0,shadow_cool=..0}] ghast_tear