function pack:weapon/rifle/shotgun/summon
function pack:weapon/rifle/shotgun/summon
function pack:weapon/rifle/shotgun/summon
function pack:weapon/rifle/shotgun/summon
function pack:weapon/rifle/shotgun/summon



scoreboard players remove @s ammo 1

loot replace entity @s[scores={ammo=1..}] weapon.mainhand loot pack:items/weapons/shotgun
loot replace entity @s[scores={ammo=..0}] weapon.mainhand loot pack:items/weapons/shotgun_reload

advancement revoke @s only pack:weapons/rifle/shotgun