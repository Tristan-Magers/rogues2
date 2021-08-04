effect give @s speed 4 0 true
effect give @s jump_boost 4 1 true
#scoreboard players set @s regen 20
#particle minecraft:heart ~ ~1 ~ .4 0 .4 0 1 force
#playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ .4 2
playsound minecraft:block.bubble_column.whirlpool_inside master @a ~ ~ ~ 1 1.7
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.5
#playsound minecraft:entity.player.levelup master @a ~ ~ ~ .3 1.7
playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 1 0
scoreboard players set @s haltboost 0