tp @s ~ ~ ~ ~2 ~
scoreboard players add @s[scores={pointsT=..799}] pointsT 1
scoreboard players set @s people 0
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run execute as @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3] at @s run scoreboard players add @e[name=point,type=minecraft:armor_stand,distance=..10] people 1
execute as @s[scores={pointsT=800..,people=1}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={nocap=..0}] pointsT 1
execute as @s[scores={pointsT=800..,people=2..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players remove @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={pointsT=2..29}] pointsT 1
execute as @s[scores={pointsT=800..,people=1}] at @s positioned ~-1 ~-1 ~-1 run execute as @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={nocap=..0}] at @s run execute as @e[name=point,distance=..8] at @s run particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~2 ~ .6 .6 .6 .05 2 force
execute as @s[scores={pointsT=800..,people=0}] at @s positioned ~-1 ~-1 ~-1 unless entity @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={nocap=..0}] run execute as @e[tag=smokerloc,distance=..100,dx=1,dz=1,dy=3] at @s run execute as @e[name=point,distance=..8] at @s run particle minecraft:falling_dust{block_state:"minecraft:snow"} ~ ~2 ~ .6 .6 .6 .05 2 force
execute as @s[scores={pointsT=800..,people=1..}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3] title [{"text":" "}]
execute as @s[scores={pointsT=800..,people=1..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players set @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3] pointtut -300
execute as @s[scores={pointsT=800..,people=1}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={nocap=..0}] times 0 3 10
execute as @s[scores={pointsT=800..,people=1}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={nocap=..0}] subtitle [{"text":"Capturing Soul","font":"fancy"}]
execute as @s[scores={pointsT=800..,people=1}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3,scores={nocap=1..}] subtitle [{"text":"Capture Blocked","color":"dark_purple","font":"fancy"}]
execute as @s[scores={pointsT=800..,people=2..}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3] subtitle [{"color":"red","text":"Someone else is on the point!","font":"fancy"}]
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run tag @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3] add point

execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 if entity @e[tag=noscore] run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] points 2
execute as @s[scores={pointsT=800..,pointAmount=1}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] points 1
execute as @s[scores={pointsT=800..,pointAmount=2}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] points 2
execute as @s[scores={pointsT=800..,pointAmount=3}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] points 3

execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run execute as @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] run function game:players/souldisplay
execute if entity @e[scores={playercount=9..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute if entity @e[scores={playercount=8..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute if entity @e[scores={playercount=7..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute if entity @e[scores={playercount=6..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute if entity @e[scores={playercount=5..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute if entity @e[scores={playercount=4..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute if entity @e[scores={playercount=3..}] run execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] healthshow 4
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..,class=3}] healthshow 2
execute as @s[scores={pointsT=600..799}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=1,dz=1,dy=3] title [{"text":" "}]
execute as @s[scores={pointsT=600..799}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2] times 0 3 10
execute as @s[scores={pointsT=600..799}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2] subtitle {"text":"A Soul is Coming...","color":"light_purple","font":"fancy"}
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] times 0 25 15
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] title {"text":"Collected Soul","font":"fancy"}
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run title @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] subtitle {"text":"Go to the spirit realm","font":"fancy"}
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 if entity @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] run tellraw @a [{"selector":"@a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}]"},{"text":" took a soul.","color":"blue"}]
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 if entity @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] if entity @e[tag=noscore] run tellraw @a [{"text":"First SOUL collected! (x3 Value)","color":"gold"}]
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 if entity @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] run tag @e[scores={Time=-100..}] remove noscore
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 if entity @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] run tellraw @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..,Score=0}] [{"text":"[Return your soul(s) to the spirit realm]"}]
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run effect give @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] glowing 2
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run scoreboard players set @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] glowing 22
execute as @s[scores={pointsT=800..}] at @s positioned ~-1 ~-1 ~-1 run execute as @a[gamemode=adventure,distance=..100,dx=3,dz=3,dy=2,scores={pointsT=30..}] at @s run scoreboard players set @e[name=point,type=minecraft:armor_stand,distance=..10] pointsT 801

execute as @s[scores={pointsT=801},type=minecraft:armor_stand] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 .5 50 force
execute as @s[scores={pointsT=801},type=minecraft:armor_stand] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2
execute as @s[scores={pointsT=801},type=minecraft:armor_stand] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ .8 1
effect clear @s[scores={pointsT=801},type=minecraft:armor_stand] glowing

scoreboard players set @s[scores={pointsT=801..}] pointsT -200

tag @s remove stable
tag @s[scores={pointsT=800..}] add stable

execute as @s[scores={pointsT=..499,pointAmount=1},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:pink_glazed_terracotta}]}
execute as @s[scores={pointsT=..499,pointAmount=2},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:blue_dye}]}
execute as @s[scores={pointsT=..499,pointAmount=3},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:orange_dye}]}

execute as @s[scores={pointsT=500..799,pointAmount=1},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:orange_wool}]}
execute as @s[scores={pointsT=500..799,pointAmount=2},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:brown_dye}]}
execute as @s[scores={pointsT=500..799,pointAmount=3},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:magenta_dye}]}

execute as @s[scores={pointsT=800,pointAmount=3},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:white_dye}]}
execute as @s[scores={pointsT=800,pointAmount=2},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:black_dye}]}
execute as @s[scores={pointsT=800,pointAmount=1},type=minecraft:armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{count:1,id:brown_stained_glass}]}

effect give @s[scores={pointsT=500..800},type=minecraft:armor_stand] glowing 999

team join open @s[scores={pointsT=800..}]
team join soon @s[scores={pointsT=500..799}]
team join wait @s[scores={pointsT=..499}]

data merge entity @s {Motion:[0.0,0.0,0.0]}