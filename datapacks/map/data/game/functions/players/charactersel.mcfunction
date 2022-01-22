scoreboard players add @s inseltext 1
#title @s[x=1015,y=14,z=1015,distance=..50] times 10 60 10
title @s[scores={inseltext=80,tutorialtime=..0}] actionbar [{"text":"RIGHT-CLICK","color":"gold"},{"text":" to select class","color":"white"}]
title @s[scores={inseltext=160,tutorialtime=..0}] actionbar [{"text":"RIGHT-CLICK","color":"aqua"},{"text":" ceiling for random","color":"white"}]
title @s[scores={inseltext=240,tutorialtime=..0}] actionbar [{"text":"RIGHT-CLICK","color":"gold"},{"text":" to select class","color":"white"}]
scoreboard players set @s[scores={inseltext=160..}] inseltext 0

tag @s remove sparklore
execute if entity @e[tag=sparketselect,distance=..0.8] run tag @s add sparklore
execute as @s[tag=sparklore,tag=!sparklore2] run tellraw @s {"text":"\n\nSouls taken by Sparket were of truly free-spirited people.\n\nIf a person keeps themselves and their family free, Sparket will bring warmth to their home. If a person is so obsessed with freedom as to become careless, Sparket will roar their fire and burn down their home."}
tag @s[tag=sparklore] add sparklore2
tag @s[tag=!sparklore] remove sparklore2

tag @s remove emmalore
execute if entity @e[tag=emmaselect,distance=..0.8] run tag @s add emmalore
execute as @s[tag=emmalore,tag=!emmalore2] run tellraw @s {"text":"\n\nSouls taken by Emma were people who belonged to the sea.\n\nAll sailors owe the sea their soul. When a man refuses his call to the sea, great rains will come and flood his home."}
tag @s[tag=emmalore] add emmalore2
tag @s[tag=!emmalore] remove emmalore2

tag @s remove haltlore
execute if entity @e[tag=haltselect,distance=..0.8] run tag @s add haltlore
execute as @s[tag=haltlore,tag=!haltlore2] run tellraw @s {"text":"\n\nSouls taken by Halt were people with the soul of a spider.\n\nSpiders are cruel to all. However, those with the spirit of a spider are close to the spirit world and can give their clan divine guildance. These people often become oracles and medicine workers.\n\nThe word of a spider soul must be followed. Those who disobey these orders will be bit by a poisonous spider while they sleep."}
tag @s[tag=haltlore] add haltlore2
tag @s[tag=!haltlore] remove haltlore2

tag @s remove plutolore
execute if entity @e[tag=plutoselect,distance=..0.8] run tag @s add plutolore
execute as @s[tag=plutolore,tag=!plutolore2] run tellraw @s {"text":"\n\nSouls taken by Pluto are of corrupt people.\n\nThose who practice corrupt magic should be outcast by their clan. Their souls are tainted.\n\nPluto is a forgiving spirit. He is the only spirit that will guild these souls, after they grow too tired to haunt the earth.\n\nIf a person is outcast unjustly, Pluto will protect them in life."}
tag @s[tag=plutolore] add plutolore2
tag @s[tag=!plutolore] remove plutolore2

tag @s remove barboselore
execute if entity @e[tag=barboseselect,distance=..0.8] run tag @s add barboselore
execute as @s[tag=barboselore,tag=!barboselore2] run tellraw @s {"text":"\n\nSouls taken by Barbose are from fearful, weak people.\n\nWhen a person becomes fearful of death, Barbose comes and steals their warmth. If a person becomes obsessed with avoiding death, Barbose leads them to it."}
tag @s[tag=barboselore] add barboselore2
tag @s[tag=!barboselore] remove barboselore2

tag @s remove vohelmlore
execute if entity @e[tag=vohelmselect,distance=..0.8] run tag @s add vohelmlore
execute as @s[tag=vohelmlore,tag=!vohelmlore2] run tellraw @s {"text":"\n\nSouls taken by Vohelm are from warriors.\n\nTo be guilded by Vohelm is a great honor.\n\nThe human world is a dangerous one, and Vohelm protects those who protect their family. Abandon your family, and he abandons you.\n\nMany families build statues to honor Vohelm and bring him into their home."}
tag @s[tag=vohelmlore] add vohelmlore2
tag @s[tag=!vohelmlore] remove vohelmlore2