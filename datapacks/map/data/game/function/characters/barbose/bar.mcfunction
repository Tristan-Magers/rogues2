clear @s barrier
clear @s[scores={Mana=..4}] glowstone_dust
clear @s[scores={Mana=..6}] leather
clear @s[scores={Mana=..6}] ink_sac
clear @s[scores={Mana=..4}] green_dye
clear @s[scores={Mana=..3}] red_dye

execute as @s[scores={Mana=..3,wtimer=..0}] run item replace entity @s hotbar.0 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..5}] run item replace entity @s hotbar.1 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.2 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={Mana=..2}] run item replace entity @s hotbar.3 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1
execute as @s[scores={portal=1}] run item replace entity @s hotbar.3 with cocoa_beans[custom_name='{"text":"Return to Portal","color":"light_purple","italic":false,"bold":true}'] 1
execute as @s[scores={Mana=..3}] run item replace entity @s hotbar.4 with barrier[custom_name='{"color":"white","italic":false,"text":"Reloading"}'] 1

execute as @s[scores={Mana=4..,wtimer=..0}] run item replace entity @s hotbar.0 with glowstone_dust[custom_name='[{"text":"Seeking Axe","color":"yellow","italic":false,"bold":true},{"text":" (","color":"white","italic":false},{"text":"4s","color":"green","italic":false},{"text":") [","color":"white","italic":false},{"text":"4 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"A lethal axe that makes men cower","color":"white","italic":false}','{"text":"12 max damage, med charge","color":"gold","italic":false}','{"text":"+13% speed","color":"green","italic":false}','{"text":"Points towards nearest player","color":"green","italic":false}']]
execute as @s[scores={Mana=6..}] run item replace entity @s hotbar.1 with leather[custom_name='[{"text":"Bomb","color":"red","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Shoot a bomb","color":"white","italic":false}','{"text":"Deals 40% less damage to self","color":"green","italic":false}']]
execute as @s[scores={Mana=4..,project_cool=..0}] run item replace entity @s hotbar.2 with green_dye[custom_name='[{"text":"Project","color":"green","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"4 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Create a fake dummy that walks forward","color":"white","italic":false}','{"text":"Explodes if close to a player after 3 seconds","color":"green","italic":false}','{"text":"Explosion blinds and poisons very close players","color":"green","italic":false}','{"text":"Location revealed on explosion","color":"red","italic":false}']]
execute as @s[scores={Mana=3..,portal=..0}] run item replace entity @s hotbar.3 with red_dye[custom_name='[{"text":"Set Portal","color":"light_purple","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"3 Mana","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]',lore=['{"text":"Put down a portal to return to later","color":"white","italic":false}','{"text":"6 health","color":"red","italic":false}']]
execute as @s[scores={Mana=4..}] run item replace entity @s hotbar.4 with ink_sac[custom_name='[{"text":"Smoke Wall","color":"dark_purple","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"6 Mana","color":"gold","italic":false},{"text":"] (range of 3 blocks)","color":"white","italic":false}]',lore=['{"text":"Send 3 damaging pulses","color":"white","italic":false}','{"text":"6 damage each","color":"green","italic":false}','{"text":"3 block range","color":"red","italic":false}']]

execute as @s[scores={coolblack=1..}] run item replace entity @s hotbar.4 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
execute as @s[scores={project_cool=1..}] run item replace entity @s hotbar.2 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
execute as @s[scores={dummylook=-29..}] run item replace entity @s hotbar.2 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
execute as @s[scores={portalcool=2..}] run item replace entity @s hotbar.3 with ghast_tear[custom_name='{"text":"Recharging","color":"white","italic":false}'] 1
clear @s[scores={coolblack=..0,portalcool=..1,dummylook=..-30,project_cool=..0}] ghast_tear