tag @s remove isshift
tag @s[scores={shift=1..}] add isshift

scoreboard players add @s invis 0

execute as @s at @s[tag=!watert] if block ~ ~ ~ water run scoreboard players set @s particles 15
execute as @s at @s[tag=!watert] if block ~ ~ ~ water run particle bubble ~ ~.2 ~ .2 .2 .2 .2 15 force
execute as @s at @s[tag=!watert] if block ~ ~ ~ water run particle minecraft:splash ~ ~ ~ .4 .3 .4 1 25 force
execute as @s at @s if block ~ ~ ~ water run tag @s add watert
execute as @s at @s unless block ~ ~ ~ water run tag @s remove watert

scoreboard players set @s[scores={shift=1..}] run 0
execute as @s[scores={walk=0,sneakd=0,run=0},tag=!walk] at @s run scoreboard players remove @s partdelay 3
execute as @s[scores={walk=1..,partdelay=..20}] at @s run scoreboard players add @s partdelay 1
execute as @s[scores={walk=1..,partdelay=13}] at @s run particle dust{color:[0.800,0.800,0.800],scale:0.8} ~ ~.2 ~ .1 .1 .1 0 1 force
execute as @s[scores={walk=1..,partdelay=16}] at @s run particle dust{color:[0.800,0.800,0.800],scale:0.8} ~ ~.2 ~ .1 .1 .1 0 1 force
execute as @s[scores={walk=1..,partdelay=19..}] at @s run particle dust{color:[0.800,0.800,0.800],scale:0.8} ~ ~.2 ~ .1 .1 .1 0 1 force

xp set @s 99 levels
xp set @s[scores={invisoff=..-1,partdelay=..0}] 0 points
xp set @s[scores={invisoff=..-1,partdelay=1}] 61 points
xp set @s[scores={invisoff=..-1,partdelay=2}] 122 points
xp set @s[scores={invisoff=..-1,partdelay=3}] 183 points
xp set @s[scores={invisoff=..-1,partdelay=4}] 243 points
xp set @s[scores={invisoff=..-1,partdelay=5}] 304 points
xp set @s[scores={invisoff=..-1,partdelay=6}] 365 points
xp set @s[scores={invisoff=..-1,partdelay=7}] 426 points
xp set @s[scores={invisoff=..-1,partdelay=8}] 487 points
xp set @s[scores={invisoff=..-1,partdelay=9}] 547 points
xp set @s[scores={invisoff=..-1,partdelay=10}] 608 points
xp set @s[scores={invisoff=..-1,partdelay=11}] 669 points
xp set @s[scores={invisoff=..-1,partdelay=12..}] 730 points
xp set @s[scores={invisoff=1..,noname=50}] 0 points
xp set @s[scores={invisoff=1..,noname=49}] 15 points
xp set @s[scores={invisoff=1..,noname=48}] 29 points
xp set @s[scores={invisoff=1..,noname=47}] 43 points
xp set @s[scores={invisoff=1..,noname=46}] 58 points
xp set @s[scores={invisoff=1..,noname=45}] 73 points
xp set @s[scores={invisoff=1..,noname=44}] 87 points
xp set @s[scores={invisoff=1..,noname=43}] 102 points
xp set @s[scores={invisoff=1..,noname=42}] 116 points
xp set @s[scores={invisoff=1..,noname=41}] 131 points
xp set @s[scores={invisoff=1..,noname=40}] 146 points
xp set @s[scores={invisoff=1..,noname=39}] 160 points
xp set @s[scores={invisoff=1..,noname=38}] 175 points
xp set @s[scores={invisoff=1..,noname=37}] 189 points
xp set @s[scores={invisoff=1..,noname=36}] 204 points
xp set @s[scores={invisoff=1..,noname=35}] 219 points
xp set @s[scores={invisoff=1..,noname=34}] 233 points
xp set @s[scores={invisoff=1..,noname=33}] 248 points
xp set @s[scores={invisoff=1..,noname=32}] 262 points
xp set @s[scores={invisoff=1..,noname=31}] 277 points
xp set @s[scores={invisoff=1..,noname=30}] 292 points
xp set @s[scores={invisoff=1..,noname=29}] 306 points
xp set @s[scores={invisoff=1..,noname=28}] 321 points
xp set @s[scores={invisoff=1..,noname=27}] 335 points
xp set @s[scores={invisoff=1..,noname=26}] 350 points
xp set @s[scores={invisoff=1..,noname=25}] 365 points
xp set @s[scores={invisoff=1..,noname=24}] 379 points
xp set @s[scores={invisoff=1..,noname=23}] 394 points
xp set @s[scores={invisoff=1..,noname=22}] 408 points
xp set @s[scores={invisoff=1..,noname=21}] 423 points
xp set @s[scores={invisoff=1..,noname=20}] 438 points
xp set @s[scores={invisoff=1..,noname=19}] 452 points
xp set @s[scores={invisoff=1..,noname=18}] 467 points
xp set @s[scores={invisoff=1..,noname=17}] 481 points
xp set @s[scores={invisoff=1..,noname=16}] 496 points
xp set @s[scores={invisoff=1..,noname=15}] 511 points
xp set @s[scores={invisoff=1..,noname=14}] 525 points
xp set @s[scores={invisoff=1..,noname=13}] 540 points
xp set @s[scores={invisoff=1..,noname=12}] 554 points
xp set @s[scores={invisoff=1..,noname=11}] 569 points
xp set @s[scores={invisoff=1..,noname=10}] 584 points
xp set @s[scores={invisoff=1..,noname=9}] 598 points
xp set @s[scores={invisoff=1..,noname=8}] 613 points
xp set @s[scores={invisoff=1..,noname=7}] 627 points
xp set @s[scores={invisoff=1..,noname=6}] 642 points
xp set @s[scores={invisoff=1..,noname=5}] 657 points
xp set @s[scores={invisoff=1..,noname=4}] 671 points
xp set @s[scores={invisoff=1..,noname=3}] 686 points
xp set @s[scores={invisoff=1..,noname=2}] 700 points
xp set @s[scores={invisoff=1..,noname=1}] 715 points
xp set @s[scores={invisoff=1..,noname=..0}] 730 points
xp set @s 0 levels

tag @s remove walk
execute as @s[scores={walk=1..}] at @s run tag @s add walk
scoreboard players set @s walk 0
scoreboard players set @s[scores={partdelay=..0}] partdelay 0
execute as @s[scores={run=1..,partdelay=..20}] at @s run scoreboard players set @s partdelay 20
execute as @s[scores={run=1..}] at @s run particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~.2 ~ .3 .4 .3 1 3 force
execute as @s[scores={run=1..}] at @s run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~.2 ~ .1 .1 .1 0 1 force
execute as @s[scores={run=1..}] at @s run particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~.1 ~ .12 .09 .12 1 2 force
effect give @s[scores={run=0},gamemode=adventure] minecraft:invisibility 5 0 true
scoreboard players set @s[scores={run=1..}] invisoff 5
scoreboard players set @s[scores={invisoff=1..,jump=1..}] partdelay 35
scoreboard players set @s[scores={invisoff=1..,jump=1..}] invisoff 14
scoreboard players set @s run 0
effect clear @s[scores={invisoff=1..},gamemode=adventure] minecraft:invisibility
execute if score @s invisoff_t > @s invisoff run scoreboard players operation @s invisoff = @s invisoff_t
scoreboard players remove @s[scores={invisoff=-5..}] invisoff 1
scoreboard players operation @s invisoff_t = @s invisoff
scoreboard players set @s[scores={jump=1..,boostT=1..}] boostpart 15
execute as @s[scores={jump=1..,shift=0}] at @s run particle minecraft:falling_dust{block_state:"minecraft:white_stained_glass"} ~ ~.05 ~ .3 .05 .3 .5 20 force
execute as @s[scores={jump=1..,shift=1..}] at @s run particle minecraft:falling_dust{block_state:"minecraft:white_stained_glass"} ~ ~-.1 ~ .1 0 .1 .1 4 force
scoreboard players set @s shift 0
scoreboard players set @s sneakd 0
scoreboard players set @s jump 0

execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~1 ~0.5 minecraft:cobweb run setblock ~0.3 ~1 ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~1 ~0.5 minecraft:cobweb run setblock ~-0.3 ~1 ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~1 ~-0.5 minecraft:cobweb run setblock ~0.3 ~1 ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~1 ~-0.5 minecraft:cobweb run setblock ~-0.3 ~1 ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~ ~0.5 minecraft:cobweb run setblock ~0.3 ~ ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~ ~0.5 minecraft:cobweb run setblock ~-0.3 ~ ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~ ~-0.5 minecraft:cobweb run setblock ~0.3 ~ ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~ ~-0.5 minecraft:cobweb run setblock ~-0.3 ~ ~-0.3 air

execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~1 ~0.5 minecraft:water run setblock ~0.3 ~1 ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~1 ~0.5 minecraft:water run setblock ~-0.3 ~1 ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~1 ~-0.5 minecraft:water run setblock ~0.3 ~1 ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~1 ~-0.5 minecraft:water run setblock ~-0.3 ~1 ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~ ~0.5 minecraft:water run setblock ~0.3 ~ ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~ ~0.5 minecraft:water run setblock ~-0.3 ~ ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~ ~-0.5 minecraft:water run setblock ~0.3 ~ ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~ ~-0.5 minecraft:water run setblock ~-0.3 ~ ~-0.3 air

execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~1 ~0.5 minecraft:packed_ice run setblock ~0.3 ~1 ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~1 ~0.5 minecraft:packed_ice run setblock ~-0.3 ~1 ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~1 ~-0.5 minecraft:packed_ice run setblock ~0.3 ~1 ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~1 ~-0.5 minecraft:packed_ice run setblock ~-0.3 ~1 ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~ ~0.5 minecraft:packed_ice run setblock ~0.3 ~ ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~ ~0.5 minecraft:packed_ice run setblock ~-0.3 ~ ~0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~0.5 ~ ~-0.5 minecraft:packed_ice run setblock ~0.3 ~ ~-0.3 air
execute as @s[scores={effect_immune=1..}] at @s if block ~-0.5 ~ ~-0.5 minecraft:packed_ice run setblock ~-0.3 ~ ~-0.3 air

execute as @s at @s if block ~ ~ ~ minecraft:cobweb run particle minecraft:spit ~ ~1 ~ .1 .3 .1 0 1

scoreboard players add @s[scores={run=..0,invisoff=..0,noname=..50},tag=!lobby] noname 4
scoreboard players set @s[scores={noname=50..},tag=!lobby] noname 50

execute as @s[scores={fall=301..}] at @s run particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~.1 ~ .2 .1 .2 .1 20 force
scoreboard players set @s fall 0