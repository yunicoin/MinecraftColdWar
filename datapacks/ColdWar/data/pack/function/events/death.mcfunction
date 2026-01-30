scoreboard players set @s deathEvent 0
execute if entity @e[tag=game,scores={started=1}] unless entity @e[tag=game,scores={mode=4}] run gamemode spectator @s
execute if entity @e[tag=game,scores={started=1}] run title @s title {"text":"Вы умерли!","color":"red"}
execute if entity @e[tag=game,scores={started=1}] unless entity @e[tag=game,scores={mode=4}] run team leave @s

execute if entity @e[tag=game,scores={started=1,mode=2}] as @a[team=1] at @s run playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 1 2