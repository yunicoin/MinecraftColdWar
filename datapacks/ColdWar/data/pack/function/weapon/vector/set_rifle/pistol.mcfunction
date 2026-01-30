tag @p add vector
execute as @p[tag=vector] at @s anchored feet run execute positioned ^ ^ ^1 summon minecraft:text_display run tag @s add vector


execute store result score @p[tag=vector] vector run data get entity @p[tag=vector] Pos[0] -10000.0
execute store result score @p[tag=vector] math run data get entity @e[limit=1,tag=vector,type=minecraft:text_display] Pos[0] 10000.0
scoreboard players operation @p[tag=vector] vector += @p[tag=vector] math
execute store result score @s math run random value -400..400
scoreboard players operation @p[tag=vector] vector += @s math
execute store result entity @s Motion[0] double 0.0003 run scoreboard players get @p[tag=vector] vector

execute store result score @p[tag=vector] vector run data get entity @p[tag=vector] Pos[1] -10000.0
execute store result score @p[tag=vector] math run data get entity @e[limit=1,tag=vector,type=minecraft:text_display] Pos[1] 10000.0
scoreboard players operation @p[tag=vector] vector += @p[tag=vector] math
execute store result score @s math run random value -400..400
scoreboard players operation @p[tag=vector] vector += @s math
execute store result entity @s Motion[1] double 0.0003 run scoreboard players get @p[tag=vector] vector

execute store result score @p[tag=vector] vector run data get entity @p[tag=vector] Pos[2] -10000.0
execute store result score @p[tag=vector] math run data get entity @e[limit=1,tag=vector,type=minecraft:text_display] Pos[2] 10000.0
scoreboard players operation @p[tag=vector] vector += @p[tag=vector] math
execute store result score @s math run random value -400..400
scoreboard players operation @p[tag=vector] vector += @s math
execute store result entity @s Motion[2] double 0.0003 run scoreboard players get @p[tag=vector] vector


tag @p[tag=vector] remove vector
kill @e[tag=vector,type=!player]