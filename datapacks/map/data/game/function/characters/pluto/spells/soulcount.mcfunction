tag @e remove me
tag @s add me

scoreboard players set @s soul_send_count 0
execute as @e[tag=soulsend] if score @s playerID = @e[tag=me,limit=1] playerID run scoreboard players add @e[tag=me,limit=1] soul_send_count 1

scoreboard players operation @s soul_send_count -= @s soul_send_count_t

execute as @s[scores={soul_send_count=..-1,Invul=..1},tag=!spiritworld] run function game:players/damageone
execute as @s[scores={soul_send_count=..-1,Invul=..1},tag=!spiritworld] run function game:players/damageone

execute as @s[scores={soul_send_count=..-2,Invul=..1},tag=!spiritworld] run function game:players/damageone
execute as @s[scores={soul_send_count=..-2,Invul=..1},tag=!spiritworld] run function game:players/damageone

execute as @s[scores={soul_send_count=..-3,Invul=..1},tag=!spiritworld] run function game:players/damageone
execute as @s[scores={soul_send_count=..-3,Invul=..1},tag=!spiritworld] run function game:players/damageone

execute as @s[scores={soul_send_count=..-4,Invul=..1},tag=!spiritworld] run function game:players/damageone
execute as @s[scores={soul_send_count=..-4,Invul=..1},tag=!spiritworld] run function game:players/damageone

scoreboard players operation @s soul_send_count += @s soul_send_count_t

scoreboard players operation @s soul_send_count_t = @s soul_send_count

tag @s remove me