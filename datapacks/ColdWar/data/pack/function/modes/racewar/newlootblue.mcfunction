execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] randomhightkit matches 1 run scoreboard players set @e[tag=game] team1auto 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] randomhightkit matches 2 run scoreboard players add @e[tag=game] team1chestarmor 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] team1chestarmor matches 3 run scoreboard players set @e[tag=game] team1chestarmor 2
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] randomhightkit matches 3 run scoreboard players set @e[tag=game] team1helmet 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] randomhightkit matches 4 run scoreboard players set @e[tag=game] team1knife 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] randomhightkit matches 5 run scoreboard players set @e[tag=game] team1mina 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run execute if score @e[tag=game,limit=1] randomhightkit matches 6 run scoreboard players set @e[tag=game] team1sniper 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]}] run execute if score @e[tag=game,limit=1] randomlowkit matches 1 run scoreboard players set @e[tag=game] team1ammo 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]}] run execute if score @e[tag=game,limit=1] randomlowkit matches 2 run scoreboard players set @e[tag=game] team1medical 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]}] run execute if score @e[tag=game,limit=1] randomlowkit matches 3 run scoreboard players set @e[tag=game] team1pils 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]}] run execute if score @e[tag=game,limit=1] randomlowkit matches 4 run scoreboard players set @e[tag=game] team1smoke 1


execute if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]}] run function pack:modes/racewar/kit
execute if entity @s[nbt={Inventory:[{id:"minecraft:chest"}]}] run function pack:modes/racewar/kit