tag @p add vector
execute as @p[tag=vector] at @s anchored feet run execute positioned ^ ^ ^1 summon minecraft:text_display run tag @s add vector


execute store result score @p[tag=vector] vector run data get entity @p[tag=vector] Pos[0] -10000
execute store result score @p[tag=vector] math run data get entity @e[limit=1,tag=vector,type=minecraft:text_display] Pos[0] 10000
scoreboard players operation @p[tag=vector] vector += @p[tag=vector] math
execute store result entity @s Motion[0] double 0.00018 run scoreboard players get @p[tag=vector] vector
execute store result score @s data0 run data get entity @s Motion[0] 50000

execute store result score @p[tag=vector] vector run data get entity @p[tag=vector] Pos[1] -10000
execute store result score @p[tag=vector] math run data get entity @e[limit=1,tag=vector,type=minecraft:text_display] Pos[1] 10000
scoreboard players operation @p[tag=vector] vector += @p[tag=vector] math
execute store result entity @s Motion[1] double 0.00026 run scoreboard players get @p[tag=vector] vector
execute store result score @s data1 run data get entity @s Motion[1] 50000

execute store result score @p[tag=vector] vector run data get entity @p[tag=vector] Pos[2] -10000
execute store result score @p[tag=vector] math run data get entity @e[limit=1,tag=vector,type=minecraft:text_display] Pos[2] 10000
scoreboard players operation @p[tag=vector] vector += @p[tag=vector] math
execute store result entity @s Motion[2] double 0.00018 run scoreboard players get @p[tag=vector] vector
execute store result score @s data2 run data get entity @s Motion[2] 50000

tag @p[tag=vector] remove vector
kill @e[tag=vector,type=!player]