execute at @s run tp @s @e[tag=water_remove,tag=new,limit=1]
tag @e[tag=water_remove] add kill
tag @e[tag=water_remove] remove new
tag @s remove water_remove_target

say water remove