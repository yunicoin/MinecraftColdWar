function pack:clear
tag @s add medic
clear @s
loot give @s loot pack:kits/medic
advancement revoke @s only pack:lootmedic