execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["sniper"],damage:0.7d,PierceLevel:10b}


execute as @n[tag=sniper] at @s run function pack:weapon/vector/set_rifle/sniper



scoreboard players remove @s ammo 1

loot replace entity @s[scores={ammo=1..}] weapon.mainhand loot pack:items/weapons/sniper
loot replace entity @s[scores={ammo=..0}] weapon.mainhand loot pack:items/weapons/sniper_reload

advancement revoke @s only pack:weapons/rifle/sniper