clear @s barrier

clear @s[scores={Mana=..6}] purple_dye
clear @s[scores={Mana=..6}] sugar
clear @s[scores={Mana=..6}] bone

execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.1 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.2 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.4 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1

execute as @s[scores={Mana=6..,shieldT=1..}] run item replace entity @s hotbar.2 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
clear @s[scores={Mana=6..,shieldT=..0}] ghast_tear

execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.1 with purple_dye[custom_name='[{"text":"Thorns","color":"gray","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Throw pool of damaging thorns","color":"white","italic":false}','{"text":"3 damage per pulse","color":"green","italic":false}','{"text":"3s duration","color":"gold","italic":false}','{"text":"Makes you visible 0.65s","color":"red","italic":false}','{"text":"0.25s to trigger","color":"red","italic":false}','{"text":"Flashes at end, glowing players (Range: 3.1)","color":"aqua","italic":false}']]
execute as @s[scores={Mana=6..,shieldT=..0}] run item replace entity @s hotbar.2 with sugar[custom_name='[{"text":"Shield","color":"aqua","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"2.2s","color":"green","italic":false},{"text":"Extinguishes fire","color":"green","italic":false},{"text":") [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"2.2s of invulnerability","color":"white","italic":false}','{"text":"Extinguishes fire","color":"green","italic":false}','{"text":"0.75s cooldown","color":"red","italic":false}']]
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.3 with bone[custom_name='[{"text":"Totem","color":"red","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"Strength","color":"white","bold":false,"italic":false},{"text":"/","color":"white","bold":false,"italic":false},{"text":"Jump","color":"white","italic":false,"bold":false},{"text":") [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Throw totem that boosts you","color":"white","italic":false}','{"text":"+2 more damage on KNIFE","color":"green","italic":false}','{"text":"Jump boost","color":"green","italic":false}','{"text":"6 block range","color":"red","italic":false}','{"text":"3 health","color":"red","italic":false}','{"text":"Explodes on leaving range","color":"aqua","italic":false}','{"text":"Damage resistance on death","color":"green","italic":false}']]
