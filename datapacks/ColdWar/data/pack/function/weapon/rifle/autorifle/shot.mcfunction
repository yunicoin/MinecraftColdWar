execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["autorifle"],damage:2.0d,}
execute as @n[tag=autorifle] at @s run function pack:weapon/vector/set_rifle/autorifle

scoreboard players remove @s ammo 1

loot replace entity @s[scores={ammo=1..}] weapon.mainhand loot pack:items/weapons/autorifle
loot replace entity @s[scores={ammo=..0}] weapon.mainhand loot pack:items/weapons/autorifle_reload

advancement revoke @s only pack:weapons/rifle/autorifle