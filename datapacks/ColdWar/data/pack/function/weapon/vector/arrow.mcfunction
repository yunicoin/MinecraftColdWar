

scoreboard players set @s vector 0

execute store result score @s math run data get entity @s Motion[0] 10
scoreboard players operation @s vector > @s math
execute store result score @s math run data get entity @s Motion[0] -10
scoreboard players operation @s vector > @s math

execute store result score @s math run data get entity @s Motion[1] 10
scoreboard players operation @s vector > @s math
execute store result score @s math run data get entity @s Motion[1] -10
scoreboard players operation @s vector > @s math

execute store result score @s math run data get entity @s Motion[2] 10
scoreboard players operation @s vector > @s math
execute store result score @s math run data get entity @s Motion[2] -10
scoreboard players operation @s vector > @s math

execute if score @s vector matches ..18 run kill @s