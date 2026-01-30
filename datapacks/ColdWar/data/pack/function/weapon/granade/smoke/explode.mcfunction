execute if entity @s[type=minecraft:item,tag=smoke,nbt={OnGround:1b},scores={math=..5800}] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 1.5 1 1.5 0.005 22 force


execute if entity @s[type=minecraft:item,tag=smoke,nbt={OnGround:1b},scores={math=..0}] run data modify entity @s Age set value 5750s