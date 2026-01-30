execute store result bossbar minecraft:game value run scoreboard players get @e[tag=game,limit=1] timer
scoreboard players remove @e[tag=game] timer 5

execute as @a at @s if score @s time_vapire matches -1 run attribute @s minecraft:generic.attack_damage base set 1
execute as @a at @s if score @s vapire matches 1 if score @s time_vapire matches -1 run effect give @s minecraft:instant_health 1 0
execute as @a at @s if score @s vapire matches 1 if score @s time_vapire matches -1 run scoreboard players set @s time_vapire 100
execute as @a at @s unless score @s vapire matches 0 run scoreboard players set @s vapire 0
execute as @a at @s unless score @s time_vapire matches -1 run attribute @s minecraft:generic.attack_damage base set -9999

execute as @a at @s if score @s ultimate_monster matches 1 run playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 10
execute as @a at @s if score @s ultimate_monster matches 1 run effect give @a[team=1] minecraft:nausea 5 50 true
execute as @a at @s if score @s ultimate_monster matches 1 run effect give @a[team=1] minecraft:blindness 5 10 true
execute as @a[team=2,scores={ultimate_monster=1}] at @s run effect give @a[team=1,distance=..10] minecraft:glowing 1 1 true

execute as @a[team=2] at @s if score @s ultimate_monster matches 1 run scoreboard players set @s monster_timer 600
execute as @a[team=2] at @s if score @s monster_timer matches 0 run loot give @s loot pack:items/monster_blind
execute as @a[team=2] at @s unless score @s monster_timer matches -1 run scoreboard players remove @s monster_timer 1

execute as @a at @s unless score @s time_vapire matches -1 run scoreboard players remove @s time_vapire 1
execute as @a at @s unless score @s ultimate_monster matches 0 run scoreboard players set @s ultimate_monster 0

kill @e[type=minecraft:snowball]

# Конец игры
execute as @e[tag=game,scores={timer=..0}] run team empty 2

execute unless entity @e[team=2] run title @a title ["",{"translate":"cw.messages.win_ct"}]
execute unless entity @a[team=2] as @a[team=1] at @s run playsound minecraft:game.end block @s ~ ~ ~ 10
execute unless entity @e[team=2] run scoreboard players set @e[tag=game] started 0
execute unless entity @e[team=2] run schedule function pack:lobby 5s

execute unless entity @a[team=1] run title @a title ["",{"translate":"cw.messages.win_monster"}]
execute unless entity @a[team=1] as @a[team=2] at @s run playsound minecraft:monster.t.end block @s ~ ~ ~ 10
execute unless entity @a[team=1] run scoreboard players set @e[tag=game] started 0
execute unless entity @a[team=1] run schedule function pack:lobby 5s