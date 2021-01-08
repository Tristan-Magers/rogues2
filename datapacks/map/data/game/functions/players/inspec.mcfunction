tag @s remove inspec

scoreboard players add @s spectext 1
title @s[scores={spectext=80}] actionbar [{"text":"Spectating","color":"green"},{"text":" (fly far away to leave)","color":"white"}]
scoreboard players set @s[scores={spectext=300..}] spectext 0

#flower
tag @s[x=3,y=22,z=228,distance=..35] add inspec
#cave
tag @s[x=148,y=13,z=197,distance=..34] add inspec
#snow
tag @s[x=120,y=12,z=113,distance=..30] add inspec
#mountain
tag @s[x=170,y=41,z=-67,distance=..50] add inspec
#island
tag @s[x=-1032,y=53,z=-1000,distance=..50] add inspec

scoreboard players set @s[tag=!inspec] Leave 1