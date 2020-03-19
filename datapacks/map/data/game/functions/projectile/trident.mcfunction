execute as @s[nbt={inBlockState:{Name:"minecraft:barrier"}}] at @s run kill @s
execute as @s[nbt={inGround:1b}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"watermark\"",Duration:600}
execute as @s[nbt={inGround:1b}] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 water[level=9] replace air
execute as @s[nbt={inGround:1b}] at @s run kill @s