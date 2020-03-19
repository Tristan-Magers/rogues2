#cast spell
execute as @s[scores={press=1..,pressdelay=..0}] at @s run function game:spells/click

#respawn
execute as @s[scores={respawn=0..}] at @s run function game:players/respawn 

#active
execute as @s[x=-35,y=4,z=6,distance=20..,gamemode=!spectator] at @s run function game:characters/active

#mana
scoreboard players add @s[gamemode=adventure,scores={Mana=..14}] manaT 1
scoreboard players add @s[scores={manaT=20..,Mana=..14}] Mana 1
execute as @s[scores={manaT=20..}] at @s run function game:spells/manaup
scoreboard players set @s[scores={manaT=20..}] manaT 0
scoreboard players set @s[scores={Mana=..0}] Mana 0

#bow count and weapon timer
scoreboard players remove @s[scores={wtimer=0..}] wtimer 1
scoreboard players set @s[scores={btimer=4..}] btimer 0

#force manaup
execute as @s[scores={wtimer=0}] at @s run function game:spells/manaup
execute as @s[scores={btimer=0}] at @s run function game:spells/manaup

scoreboard players set @s[scores={btimer=0}] btimer -1

#weapons
execute as @s[scores={wtimer=0}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ .5 0
execute as @s[scores={wtimer=0}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0
execute as @s[scores={wtimer=0}] at @s run particle minecraft:falling_dust gray_stained_glass ~ ~1 ~ .3 .5 .3 .3 20
clear @s[scores={wtimer=0}] wooden_sword

#bows
replaceitem entity @s[scores={btimer=1..}] inventory.0 arrow
clear @s[scores={btimer=0}] arrow
clear @s[scores={btimer=0,class=5..}] bow
clear @s[scores={btimer=0,class=..3}] bow
scoreboard players set @s[scores={btimer=0}] btimer -1

scoreboard players remove @s[scores={particles=1..}] particles 1
scoreboard players remove @a glowing 1
scoreboard players remove @s[scores={invis=0..}] invis 1
scoreboard players remove @s[scores={FBreload=1..}] FBreload 1
scoreboard players remove @s[scores={pressdelay=1..}] pressdelay 1
scoreboard players add @s pressdelay 0

#health
scoreboard players set @s[x=-35,y=4,z=6,distance=..40] healthshow 100
scoreboard players add @s healthshow 0
execute as @s[scores={respawn=..0}] at @s run function game:players/health

#stealth particles
execute as @s[scores={invis=..0}] at @s run function game:players/movepart

#Invul
scoreboard players remove @s Invul 1
