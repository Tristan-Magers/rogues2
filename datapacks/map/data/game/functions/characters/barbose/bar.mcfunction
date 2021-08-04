clear @s barrier
clear @s[scores={Mana=..4}] glowstone_dust
clear @s[scores={Mana=..6}] leather
clear @s[scores={Mana=..6}] ink_sac
clear @s[scores={Mana=..4}] green_dye
clear @s[scores={Mana=..3}] red_dye

execute as @s[scores={Mana=..3,wtimer=..0}] run item replace entity @s hotbar.0 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.1 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={dummylook=-29..}] run item replace entity @s hotbar.2 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={Mana=..2}] run item replace entity @s hotbar.3 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1
execute as @s[scores={portal=1}] run item replace entity @s hotbar.3 with cocoa_beans{display:{Name:"{\"text\":\"Return to Portal\",\"color\":\"light_purple\",\"italic\":\"false\",\"bold\":\"true\"}"}} 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"Reloading\",\"color\":\"white\",\"italic\":\"false\"}"}} 1

execute as @s[scores={Mana=4..,wtimer=..0}] run item replace entity @s hotbar.0 with glowstone_dust{display:{Name:"[{\"text\":\"Seeking Axe\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=4..,wtimer=..0}] run item replace entity @s hotbar.0 with glowstone_dust{display:{Name:"[{\"text\":\"Seeking Axe\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" (\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4s\",\"color\":\"green\",\"italic\":\"false\"},{\"text\":\") [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.1 with leather{display:{Name:"[{\"text\":\"Bomb\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=4..,dummylook=..-30}] run item replace entity @s hotbar.2 with green_dye{display:{Name:"[{\"text\":\"Decoy\",\"color\":\"green\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"4 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=3..,portal=..0}] run item replace entity @s hotbar.3 with red_dye{display:{Name:"[{\"text\":\"Set Portal\",\"color\":\"light_purple\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"3 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.4 with ink_sac{display:{Name:"[{\"text\":\"Blackhole\",\"color\":\"gray\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"6 Mana\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"] (range of 3 blocks)\",\"color\":\"white\",\"italic\":\"false\"}]"}}

execute as @s[scores={coolblack=1..}] run item replace entity @s hotbar.4 with barrier{display:{Name:"{\"text\":\"In-Use\",\"color\":\"white\",\"italic\":\"false\"}"}} 1