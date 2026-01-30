execute unless entity @a[team=2] run title @a title ["",{"translate":"cw.messages.win_ct"}]
execute unless entity @a[team=2] as @a[team=1] at @s run playsound minecraft:game.end block @s ~ ~ ~ 10
execute unless entity @a[team=2] run scoreboard players set @e[tag=game] started 0
execute unless entity @a[team=2] run schedule function pack:lobby 5s

execute unless entity @a[team=1] run title @a title ["",{"translate":"cw.messages.win_t"}]
execute unless entity @a[team=1] as @a[team=2] at @s run playsound minecraft:game.end block @s ~ ~ ~ 10
execute unless entity @a[team=1] run scoreboard players set @e[tag=game] started 0
execute unless entity @a[team=1] run schedule function pack:lobby 5s

