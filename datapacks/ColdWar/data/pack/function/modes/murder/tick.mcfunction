execute store result bossbar minecraft:game value run scoreboard players get @e[tag=game,limit=1] timer
scoreboard players remove @e[tag=game] timer 5

# Конец игры
execute as @e[tag=game,scores={timer=..0}] run team empty 2

execute unless entity @e[team=2] run title @a title ["",{"translate":"cw.messages.win_hiders"}]
execute unless entity @a[team=2] as @a[team=1] at @s run playsound minecraft:murder.ct.end block @s ~ ~ ~ 10
execute unless entity @e[team=2] run scoreboard players set @e[tag=game] started 0
execute unless entity @e[team=2] run schedule function pack:lobby 5s

execute unless entity @a[team=1] run title @a title  ["",{"translate":"cw.messages.win_murder"}]
execute unless entity @a[team=1] run scoreboard players set @e[tag=game] started 0
execute unless entity @a[team=1] run schedule function pack:lobby 5s