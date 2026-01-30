advancement revoke @s only pack:modes/bomb/defusestart
tag @s add defuze
clear @s minecraft:acacia_button
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:movement_speed base set 0
execute if entity @s[team=2] run function pack:modes/bomb/defuze_end

execute store result entity @n[tag=game,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute store result entity @n[tag=game,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1] 1