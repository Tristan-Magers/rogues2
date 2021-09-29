scoreboard players remove @s[scores={shotCharge=-10..}] shotCharge 1
execute as @s[scores={shotCharge=1}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 .8
execute as @s[scores={shotCharge=0}] at @s run playsound minecraft:entity.firework_rocket.shoot master @s ~ ~ ~ 1 2
execute as @s[scores={shotCharge=3}] at @s run playsound minecraft:entity.firework_rocket.shoot master @s ~ ~ ~ 1 1
execute as @s[scores={shotCharge=0}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1,Silent:1,Silent:1,Tags:["lshot"]}

execute as @s[scores={shotCharge=0}] at @s run scoreboard players set @s boltdelay 20

execute as @s[scores={shotCharge=0}] at @s run scoreboard players operation @e[tag=lshot,distance=..1] playerID = @s playerID

execute as @s[scores={shotCharge=0}] at @s run tp @e[tag=lshot,sort=nearest,limit=1] @p
execute as @s[scores={shotCharge=0},tag=!isshift] at @s run tp @e[tag=lshot,sort=nearest,limit=1] ~ ~1.7 ~
execute as @s[scores={shotCharge=0},tag=isshift] at @s run tp @e[tag=lshot,sort=nearest,limit=1] ~ ~1.4 ~
execute as @s[scores={shotCharge=0}] at @s run execute as @e[tag=lshot,sort=nearest,limit=1] at @s run function game:faceaway
