scoreboard players set @a[scores={trident=2..}] trident 0

clear @s barrier
clear @s[scores={trident=..0}] trident
clear @s[scores={Mana=..6}] kelp
clear @s[scores={Mana=..5}] light_blue_dye
clear @s[scores={Mana=..3}] diamond
clear @s[scores={Mana=..6}] clay_ball
clear @s[scores={Mana=..3}] potion

execute as @s[scores={Mana=..5,trident=..0}] run item replace entity @s hotbar.0 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..4}] run item replace entity @s hotbar.1 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..2}] run item replace entity @s hotbar.2 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.4 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1

execute as @s[scores={Mana=6..,trident=..0}] run item replace entity @s hotbar.0 with kelp[custom_name='[{"text":"Water Trident","color":"dark_aqua","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Gives a 3 durability trident","color":"white","italic":false}','{"text":"7 damage, 0.9s charge","color":"gold","italic":false}','{"text":"Can be thrown","color":"green","italic":false}','{"text":"Riptide in water","color":"green","italic":false}','{"text":"Damaged when unequipped","color":"red","italic":false}','{"text":"0.4s summon time","color":"red","italic":false}']]
execute as @s[scores={Mana=5..,boltdelay=..0}] run item replace entity @s hotbar.1 with light_blue_dye[custom_name='[{"text":"Bolt","color":"white","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"5 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Throws a bolt, dealing 8 damage","color":"white","italic":false}','{"text":"Makes you glow 1s","color":"red","italic":false}','{"text":"0.3s delay","color":"red","italic":false}','{"text":"1.45s cooldown","color":"red","italic":false}']]
execute as @s[scores={Mana=3..}] run item replace entity @s hotbar.2 with diamond[custom_name='[{"text":"Frost Pillar","color":"blue","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"3 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Summons a pillar of ice","color":"white","italic":false}','{"text":"Lasts 1.8s","color":"gold","italic":false}']]
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.3 with clay_ball[custom_name='[{"text":"Wave","color":"dark_aqua","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"] (","color":"white","italic":false},{"text":"pushes players","color":"white","bold":false,"italic":false},{"text":")","color":"white","italic":false}]',lore=['{"text":"Pushes and reveals players","color":"white","italic":false}','{"text":"Pierces walls","color":"green","italic":false}','{"text":"Fails close range","color":"red","italic":false}','{"text":"Makes you glow","color":"red","italic":false}']]

execute as @s[scores={Mana=0..}] run item replace entity @s hotbar.5 with netherite_ingot[custom_name='[{"text":"Pure Souls","color":"gold","italic":false,"bold":true},{"text":" : Souls Heals 2 Extra","color":"white","italic":false,"bold":false}]',lore=['{"text":"+6 Health (+4 for every player over 2)","color":"white","italic":false}']]

execute as @s[scores={boltdelay=1..}] run item replace entity @s hotbar.1 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
clear @s[scores={boltdelay=..0}] ghast_tear