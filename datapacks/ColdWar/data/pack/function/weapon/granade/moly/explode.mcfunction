scoreboard players set @a math 0
scoreboard players set @n[tag=game] math 0
execute as @e[type=minecraft:item,tag=moly,nbt={OnGround:1b}] at @s run scoreboard players add @n[tag=game] math 1
execute as @e[type=minecraft:item,tag=moly,nbt={OnGround:1b}] at @s if entity @e[type=minecraft:item,tag=smoke,distance=..2.5] run kill @s
execute if score @n[tag=game] math matches ..200 as @e[type=minecraft:item,tag=moly,nbt={OnGround:1b}] at @s run function pack:weapon/granade/moly/keepfire
execute if score @n[tag=game] math matches 200.. run say "too many fire" 
execute as @a[scores={math=1}] at @s run damage @s 2 minecraft:in_fire
execute as @a[scores={math=2}] at @s run damage @s 5 minecraft:in_fire
execute as @a[scores={math=3..}] at @s run damage @s 10 minecraft:in_fire
