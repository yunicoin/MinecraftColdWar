particle minecraft:flame ~ ~ ~ 0.3 0 0.3 0.01 3 force
execute if entity @s[type=minecraft:item,tag=moly,nbt={OnGround:1b}] run summon item ~ ~ ~ {Item:{id:"minecraft:glass_bottle",count:1},PickupDelay:32767,Age:-32765,Tags:["moly2"]}
execute as @e[tag=moly2] at @s run function pack:weapon/granade/moly/firesummon
execute if entity @s[type=minecraft:item,tag=moly,nbt={OnGround:1b},scores={math=..0}] run data modify entity @s Age set value 5940s
execute if entity @s[type=minecraft:item,tag=moly,nbt={OnGround:1b},scores={math=..0}] run data merge entity @s {Item:{id:"minecraft:glass_bottle"}}
scoreboard players add @a[distance=..0.3] math 1