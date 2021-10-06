item replace entity @s[tag=insel,gamemode=adventure] hotbar.0 with air
item replace entity @s[tag=insel,gamemode=adventure] hotbar.1 with air
item replace entity @s[tag=insel,gamemode=adventure] hotbar.2 with air
item replace entity @s[tag=insel,gamemode=adventure] hotbar.3 with air

item replace entity @s[tag=insel,gamemode=adventure] hotbar.5 with air
item replace entity @s[tag=insel,gamemode=adventure] hotbar.6 with air
item replace entity @s[tag=insel,gamemode=adventure] hotbar.7 with air
item replace entity @s[tag=insel,gamemode=adventure] hotbar.8 with air

item replace entity @s[scores={loretext=1..},gamemode=adventure] hotbar.6 with air

clear @s[tag=!ready,gamemode=adventure] magma_cream
clear @s[tag=!insel,tag=!ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:spider_eye",Slot:1b}]}] spider_eye
clear @s[tag=insel,tag=!ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:spider_eye",Slot:4b}]}] spider_eye

item replace entity @s[tag=!insel,tag=!ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:spider_eye",Slot:1b}]}] hotbar.1 with minecraft:spider_eye{display:{Name:"[{\"text\":\"Not In-Game\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Join Game\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
item replace entity @s[tag=insel,tag=!ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:spider_eye",Slot:4b}]}] hotbar.4 with minecraft:spider_eye{display:{Name:"[{\"text\":\"Not In-Game\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Join Game\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

clear @s[tag=ready,gamemode=adventure] spider_eye
clear @s[tag=!insel,tag=ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:magma_cream",Slot:1b}]}] magma_cream
clear @s[tag=insel,tag=ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:magma_cream",Slot:4b}]}] magma_cream

item replace entity @s[tag=!insel,tag=ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:magma_cream",Slot:1b}]}] hotbar.1 with minecraft:magma_cream{display:{Name:"[{\"text\":\"In-Game\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Leave Game\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}
item replace entity @s[tag=insel,tag=ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:magma_cream",Slot:4b}]}] hotbar.4 with minecraft:magma_cream{display:{Name:"[{\"text\":\"In-Game\",\"color\":\"dark_aqua\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Leave Game\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

clear @a[x=-145,y=23,z=-45,distance=20..150,tag=!insel,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:7b}]},gamemode=adventure] written_book
item replace entity @a[x=-145,y=23,z=-45,distance=20..150,tag=!insel,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:7b}]},gamemode=adventure] hotbar.7 with written_book{title:"Book for Nerds",author:"ChainsawNinja",generation:0,resolved:1b,pages:['[{"text":"Book for nerds","bold":true,"underlined":false},{"text":"\\nGame Version 2.0.0","underlined":false,"bold":false},{"text":"\\n\\nLinks:","underlined":false},{"text":"\\n\\nDiscord","color":"dark_aqua","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Talk with the community and find out about upcoming tournaments. :)","color":"dark_green"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/6xatFYH"}},{"text":"\\n\\nSupport Me :3","color":"#1B4EA6","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Just letting me know you enjoy the game is enough, but if you are inclined, I have a Patreon.","color":"dark_aqua"}]},"clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"\\n\\nPatch Notes","color":"#240E57","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"My pastebin profile includes an archive of all previous patch notes as well.","color":"gold"}]},"clickEvent":{"action":"open_url","value":"https://pastebin.com/e2WTZm2e"}},{"text":"\\n\\nGitHub","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Download of world and all files. May be a slightly different version.","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Tristan-Magers/rogues2"}}]']} 1

clear @s[tag=!nomusic,gamemode=adventure] golden_horse_armor
clear @s[tag=!insel,tag=!nomusic,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:iron_horse_armor",Slot:3b}]}] iron_horse_armor
item replace entity @s[tag=!insel,tag=!nomusic,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:iron_horse_armor",Slot:3b}]}] hotbar.3 with minecraft:iron_horse_armor{display:{Name:"[{\"text\":\"Music On\",\"color\":\"green\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Disable Music\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

clear @s[tag=nomusic,gamemode=adventure] iron_horse_armor
clear @s[tag=!insel,tag=nomusic,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_horse_armor",Slot:3b}]}] golden_horse_armor
item replace entity @s[tag=!insel,tag=nomusic,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:golden_horse_armor",Slot:3b}]}] hotbar.3 with minecraft:golden_horse_armor{display:{Name:"[{\"text\":\"Music Off\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\" [\",\"color\":\"white\",\"italic\":\"false\"},{\"text\":\"Enable Music\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"]\",\"color\":\"white\",\"italic\":\"false\"}]"}}

scoreboard players add @s loretext 0
scoreboard players remove @s[scores={loretext=1..}] loretext 1
clear @s[gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:diamond_horse_armor",Slot:5b}]}] diamond_horse_armor
clear @s[gamemode=adventure,scores={loretext=1..}] diamond_horse_armor
item replace entity @s[scores={loretext=..0},tag=!insel,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:diamond_horse_armor",Slot:5b}]}] hotbar.5 with minecraft:diamond_horse_armor{display:{Name:"[{\"text\":\"\",\"color\":\"white\",\"italic\":\"false\",\"bold\":\"true\"},{\"text\":\"\",\"color\":\"gold\",\"italic\":\"false\"},{\"text\":\"\",\"color\":\"white\",\"italic\":\"false\"}]"}}
