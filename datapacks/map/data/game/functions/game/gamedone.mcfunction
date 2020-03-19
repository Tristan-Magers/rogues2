tp @a[gamemode=spectator] -35 4 6
gamemode adventure @a[gamemode=!creative]
tp @a[x=-35,y=4,z=6,distance=20..,gamemode=!creative] -35 4 6
clear @a[gamemode=!creative]
scoreboard players set @a respawn -100
scoreboard players set @a[gamemode=!creative] burnout -100
scoreboard players set @a[gamemode=!creative] shotCharge -100
scoreboard players set @a[gamemode=!creative] wtimer -100
scoreboard players set @a[gamemode=!creative] btimer -100
scoreboard players set @a[gamemode=!creative] dummylook -100
scoreboard players set @a[gamemode=!creative] portal -100
scoreboard players set @a manaT 0