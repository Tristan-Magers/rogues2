clear @s minecraft:written_book
item replace entity @s hotbar.8 with air

clear @s[tag=!ready,gamemode=adventure] magma_cream
clear @s[tag=ready,gamemode=adventure] spider_eye

clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:spider_eye",Slot:0b}]}] spider_eye
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:magma_cream",Slot:0b}]}] magma_cream
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:spider_eye",Slot:2b}]}] spider_eye
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:magma_cream",Slot:2b}]}] magma_cream
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:spider_eye",Slot:4b}]}] spider_eye
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:magma_cream",Slot:4b}]}] magma_cream
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:spider_eye",Slot:6b}]}] spider_eye
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:magma_cream",Slot:6b}]}] magma_cream
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:spider_eye",Slot:8b}]}] spider_eye
clear @s[gamemode=adventure,nbt={Inventory:[{id:"minecraft:magma_cream",Slot:8b}]}] magma_cream

clear @s[tag=ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:magma_cream",Slot:7b}]}] magma_cream
item replace entity @s[tag=ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:magma_cream",Slot:7b}]}] hotbar.7 with minecraft:magma_cream[custom_name='[{"text":"In-Game","color":"dark_aqua","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"Leave Game","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]']
clear @s[tag=!ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:spider_eye",Slot:7b}]}] spider_eye
item replace entity @s[tag=!ready,gamemode=adventure,nbt=!{Inventory:[{id:"minecraft:spider_eye",Slot:7b}]}] hotbar.7 with minecraft:spider_eye[custom_name='[{"text":"Not In-Game","color":"red","italic":false,"bold":true},{"text":" [","color":"white","italic":false},{"text":"Join Game","color":"gold","italic":false},{"text":"]","color":"white","italic":false}]']