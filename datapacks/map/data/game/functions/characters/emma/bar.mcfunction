scoreboard players set @a[scores={trident=2..}] trident 0

clear @s barrier
clear @s[scores={trident=..0}] trident
clear @s[scores={Mana=..6}] kelp
clear @s[scores={Mana=..6}] light_blue_dye
clear @s[scores={Mana=..3}] diamond
clear @s[scores={Mana=..6}] clay_ball
clear @s[scores={Mana=..3}] potion

execute as @s[scores={boltdelay=1..}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Recharging\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5,trident=..0}] run item replace entity @s hotbar.0 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..2}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.3 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=6..,trident=..0}] run item replace entity @s hotbar.0 with kelp{display:{Name:"[{\"text\":\"Water Trident\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Gives a 3 durability trident","color":"white","italic":false}','{"text":"7 max damage, medium charge","color":"gold","italic":false}','{"text":"Can be thrown","color":"green","italic":false}','{"text":"Riptide in water","color":"green","italic":false}']}}
execute as @s[scores={Mana=6..,boltdelay=..0}] run item replace entity @s hotbar.1 with light_blue_dye{display:{Name:"[{\"text\":\"Bolt\",\"color\":\"white\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Throws a bolt, dealing 12 damage","color":"white","italic":false}','{"text":"Makes you glow","color":"red","italic":false}']}}
execute as @s[scores={Mana=3..}] run item replace entity @s hotbar.2 with diamond{display:{Name:"[{\"text\":\"Frost Pillar\",\"color\":\"blue\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Summons a pillar of ice","color":"white","italic":false}','{"text":"Lasts 1.9 seconds","color":"gold","italic":false}']}}
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.3 with clay_ball{display:{Name:"[{\"text\":\"Wave\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"] (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"pushes players\",\"color\":\"white\",\"bold\":\"false\",\"italic\":\"false\"},{\"text\":\")\",\"color\":\"white\",\"italic\":\"false\"}]",Lore:['{"text":"Pushes and reveals players","color":"white","italic":false}','{"text":"Pierces walls","color":"green","italic":false}','{"text":"Fails close range","color":"red","italic":false}','{"text":"Makes you glow","color":"red","italic":false}']}}
