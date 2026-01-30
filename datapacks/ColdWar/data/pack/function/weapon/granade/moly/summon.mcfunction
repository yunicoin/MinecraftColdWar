execute anchored eyes run summon item ^ ^ ^ {Item:{id:"minecraft:raw_gold",count:1},PickupDelay:32767,Age:-32765,Tags:["moly"]}
execute if entity @s[tag=sit] run execute as @n[tag=moly] at @s run function pack:weapon/vector/set_granade_low
execute if entity @s[tag=!sit] run execute as @n[tag=moly] at @s run function pack:weapon/vector/set_granade_hight
advancement revoke @s only pack:weapons/granade/moly