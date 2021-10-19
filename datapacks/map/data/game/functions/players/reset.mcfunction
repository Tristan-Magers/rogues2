stopsound @s

effect clear @s

tag @s add spiritnoob

tag @s remove tpno
tag @s remove spiritworld
tag @s remove spirlob
tag @s remove arena

scoreboard players set @s nolev -1
scoreboard players set @s nocap 0

scoreboard players set @s wtimer 0
scoreboard players set @s btimer 0

scoreboard players add @s class 0
scoreboard players set @s[scores={class=0}] class 1

scoreboard players set @s cooljp 0
scoreboard players set @s coolblack 0

scoreboard players set @s boostpart 0

scoreboard players set @s manaboost 0

scoreboard players set @s press 0
scoreboard players set @s pressdelay 0

scoreboard players set @s trident 0
scoreboard players set @s tridentH 0
scoreboard players set @s tridentU 0

scoreboard players set @s spiderwall 0

scoreboard players set @s shield -1
scoreboard players set @s shieldT -1
scoreboard players set @s totemres 0
tag @s remove totemres

scoreboard players set @s cavekill 0
scoreboard players set @s spidercount 0
scoreboard players set @s scounttest 0

scoreboard players set @s plutospike -1
scoreboard players set @s plutoregen -1

scoreboard players set @s dummylook -1
scoreboard players set @s portal -4

scoreboard players set @s presstut 0
scoreboard players set @s pointtut 0
scoreboard players set @s scoretut 0
scoreboard players set @s respawn -100

scoreboard players set @s burnout -1
scoreboard players set @s burnoutT -1

scoreboard players set @s venge -1

scoreboard players set @s soulheal 0
scoreboard players set @s points 0

scoreboard players set @s manaT 20
scoreboard players set @s Mana -1
scoreboard players set @s Mana -1

scoreboard players set @s noname 1

scoreboard players set @s selwait 100

scoreboard players set @s invis 0
scoreboard players set @s invisoff 0

scoreboard players set @s dcdelay 0
scoreboard players set @s boltdelay 0

scoreboard players set @s fireheal 0

scoreboard players set @s damageob 0
scoreboard players add @s tutorialtime 0

clear @s
title @s times 0 25 10

gamemode adventure @s
attribute @s minecraft:generic.attack_damage base get