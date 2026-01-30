execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["pistol"],damage:1.4d}
execute as @n[tag=pistol] at @s run function pack:weapon/vector/set_rifle/pistol

scoreboard players remove @s ammo 1

loot replace entity @s[scores={ammo=1..}] weapon.mainhand loot pack:items/weapons/pistol
loot replace entity @s[scores={ammo=..0}] weapon.mainhand loot pack:items/weapons/pistol_reload

advancement revoke @s only pack:weapons/rifle/pistol