execute as @e[type=minecraft:item] at @s run execute store result score @s math run data get entity @s Age 1


execute as @e[type=minecraft:item,tag=frag,scores={math=0..}] at @s run function pack:weapon/granade/frag/explode
execute as @e[type=minecraft:item,tag=smoke,nbt={OnGround:1b}] at @s run function pack:weapon/granade/smoke/explode

function pack:weapon/granade/moly/explode

