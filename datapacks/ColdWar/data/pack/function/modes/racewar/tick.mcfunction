execute store result bossbar minecraft:game value run scoreboard players get @e[tag=game,limit=1] timer
scoreboard players remove @e[tag=game] timer 5

execute as @a[tag=team1,gamemode=spectator] at @s run team join 1 @s

execute as @a[tag=team1,gamemode=spectator] at @s run function pack:modes/racewar/kit
execute as @a[tag=team1,gamemode=spectator] at @s run scoreboard players add @e[tag=game] team2socer 1
execute as @a[tag=team1,gamemode=spectator] at @s run execute at @e[tag=spawn_blue] run tp @s ~ ~2 ~ 
execute as @a[tag=team1,gamemode=spectator] at @s run gamemode adventure @s

execute positioned -3 3 -36 run gamemode spectator @a[distance=..7]

execute as @a[tag=team2,gamemode=spectator] at @s run team join 2 @s

execute as @a[tag=team2,gamemode=spectator] at @s run function pack:modes/racewar/kit
execute as @a[tag=team2,gamemode=spectator] at @s run scoreboard players add @e[tag=game] team1socer 1
execute as @a[tag=team2,gamemode=spectator] at @s run execute at @e[tag=spawn_red] run tp @s ~ ~2 ~ 
execute as @a[tag=team2,gamemode=spectator] at @s run gamemode adventure @s

# Конец игры
execute as @e[tag=game,scores={timer=..0}] if score @e[tag=game,limit=1] team1socer > @e[tag=game,limit=1] team2socer run title @a title ["",{"text":"cw.messages.win_blue"}]
execute as @e[tag=game,scores={timer=..0}] if score @e[tag=game,limit=1] team1socer > @e[tag=game,limit=1] team2socer as @a[team=1] run playsound minecraft:game.end block @s ~ ~ ~ 10
execute as @e[tag=game,scores={timer=..0}] if score @e[tag=game,limit=1] team1socer < @e[tag=game,limit=1] team2socer run title @a title ["",{"text":"cw.messages.win_blue"}]
execute as @e[tag=game,scores={timer=..0}] if score @e[tag=game,limit=1] team1socer < @e[tag=game,limit=1] team2socer as @a[team=2] run playsound minecraft:game.end block @s ~ ~ ~ 10
execute as @e[tag=game,scores={timer=..0}] if score @e[tag=game,limit=1] team1socer = @e[tag=game,limit=1] team2socer run title @a title {"translate":"cw.messages.draw"}
execute as @e[tag=game,scores={timer=..0}] run function pack:lobby


scoreboard players add @e[tag=game] randomhightkit 1
execute if score @e[tag=game,limit=1] randomhightkit matches 7 run scoreboard players set @e[tag=game] randomhightkit 1
scoreboard players add @e[tag=game] randomlowkit 1
execute if score @e[tag=game,limit=1] randomlowkit matches 5 run scoreboard players set @e[tag=game] randomlowkit 1


execute as @a[team=2] at @s if entity @e[tag=spawn_red,distance=..2] run function pack:modes/racewar/newlootred
execute as @a[team=1] at @s if entity @e[tag=spawn_blue,distance=..2] run function pack:modes/racewar/newlootblue