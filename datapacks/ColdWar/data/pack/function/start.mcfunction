advancement grant @a[scores={rpState=4}] only pack:main
execute at @e[tag=spawn_blue] run tp @a[team=1] ~ ~2 ~
execute at @e[tag=spawn_red] run tp @a[team=2] ~ ~2 ~

scoreboard players set @e[tag=game] started 1
scoreboard players set @e[tag=game] anim 1
effect clear @a[scores={rpState=4}]
effect give @a[team=!] minecraft:blindness 3 255 true

title @a[scores={rpState=4}] actionbar {"text":"Игра началась","color":"dark_red"}

execute as @e[tag=game,scores={mode=0}] run function pack:modes/classic/start
execute as @e[tag=game,scores={mode=1}] run function pack:modes/bomb/start
execute as @e[tag=game,scores={mode=2}] run function pack:modes/murder/start
execute as @e[tag=game,scores={mode=3}] run function pack:modes/monster/start
execute as @e[tag=game,scores={mode=4}] run function pack:modes/racewar/start
execute as @a[nbt={Inventory:[{id:"minecraft:pumpkin_seeds"}]},scores={rpState=4}] at @s run effect give @s minecraft:speed 9999 1 true
effect give @a[tag=comando,scores={rpState=4}] minecraft:haste 999999 25 true
advancement revoke @a only pack:damage