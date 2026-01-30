execute anchored eyes run summon item ^ ^ ^ {Item:{id:"minecraft:raw_iron",count:1},PickupDelay:32767,Age:-32765,Tags:["smoke"]}
execute if entity @s[tag=sit] run execute as @n[tag=smoke] at @s run function pack:weapon/vector/set_granade_low
execute if entity @s[tag=!sit] run execute as @n[tag=smoke] at @s run function pack:weapon/vector/set_granade_hight
advancement revoke @s only pack:weapons/granade/smoke