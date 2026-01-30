tag @a remove team1
tag @a remove team2
tp @a[scores={rpState=4}] -3 3 -36

execute as @a[scores={rpState=4}] at @s run function pack:clear
effect clear @a[scores={rpState=4}]
team leave @a[scores={rpState=4}]
gamemode adventure @a
scoreboard players set @e[tag=game] started 0
execute as @a at @s run attribute @s minecraft:attack_speed base set 4

kill @e[type=minecraft:item]

# Классик


# Бомба
kill @e[tag=bomb]
bossbar set minecraft:defuze visible false
bossbar set minecraft:bomb visible false
bossbar set minecraft:game visible false


scoreboard players set @e[tag=game] team_blue_count 0
scoreboard players set @e[tag=game] team_red_count 0

execute as @e[tag=mine] at @s if block ~ ~1 ~ minecraft:small_amethyst_bud run setblock ~ ~1 ~ air
execute as @e[tag=mine] at @s run kill @s

execute as @e[tag=detector] at @s if block ~ ~1 ~ minecraft:medium_amethyst_bud run setblock ~ ~1 ~ air
execute as @e[tag=detector] at @s run kill @s

execute as @e[tag=detector] at @s run kill @s