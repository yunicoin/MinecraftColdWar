scoreboard players set @e[tag=game] timer 45000
bossbar set minecraft:game players @a
bossbar set minecraft:game visible true
clear @a
loot give @a[team=2] loot pack:kits/murder
loot give @a[team=1] loot pack:kits/survivor
execute as @a[team=1] at @s run playsound minecraft:murder.ct.start block @s ~ ~ ~ 10