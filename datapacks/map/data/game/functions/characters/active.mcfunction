#leave
execute as @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:8b}]}] run tellraw @a [{"selector":"@s"},{"text":" left game"}]
execute as @s[nbt={Inventory:[{id:"minecraft:glass_bottle",Slot:8b}]}] run scoreboard players set @s Leave 1

clear @s[tag=!spirlob,tag=!arena,tag=!lobby,gamemode=!creative,nbt=!{Inventory:[{id:"minecraft:potion",Slot:8b}]}] potion
item replace entity @s[tag=!spirlob,tag=!arena,tag=!lobby,gamemode=!creative,nbt=!{Inventory:[{id:"minecraft:potion",Slot:8b}]}] hotbar.8 with minecraft:potion{display:{Name:"[{\"text\":\"[\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Leave Game\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

#sparket active
execute as @s[scores={class=1}] at @s run function game:characters/sparket/active

#volhelm active
execute as @s[scores={class=2}] at @s run function game:characters/vohelm/active

#emma active
execute as @s[scores={class=3}] at @s run function game:characters/emma/active

#pluto active
execute as @s[scores={class=4}] at @s run function game:characters/pluto/active

#halt active
execute as @s[scores={class=5}] at @s run function game:characters/halt/active

#barbose active
execute as @s[scores={class=6}] at @s run function game:characters/barbose/active

#vengence
execute as @s[scores={venge=0..}] at @s run function game:characters/venge