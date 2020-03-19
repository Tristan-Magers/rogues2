scoreboard players operation @s dx = @s x
scoreboard players operation @s dy = @s y
scoreboard players operation @s dz = @s z

execute as @s at @s run function game:detection/detailwall

#scoreboard players operation @s x *= @e[name=numbers] ratio2
#scoreboard players operation @s y *= @e[name=numbers] ratio2
#scoreboard players operation @s z *= @e[name=numbers] ratio2

#scoreboard players operation @s x /= @e[name=numbers] ratio1
#scoreboard players operation @s y /= @e[name=numbers] ratio1
#scoreboard players operation @s z /= @e[name=numbers] ratio1