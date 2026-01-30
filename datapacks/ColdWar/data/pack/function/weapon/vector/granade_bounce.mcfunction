execute store result score @s math run data get entity @s Motion[0] -150000
scoreboard players operation @s math += @s data0
execute store result entity @s Motion[0] double -0.00001 run scoreboard players get @s math
execute store result score @s data0 run data get entity @s Motion[0] 50000



execute store result score @s math run data get entity @s Motion[2] -150000
scoreboard players operation @s math += @s data2
execute store result entity @s Motion[2] double -0.00001 run scoreboard players get @s math
execute store result score @s data2 run data get entity @s Motion[2] 50000