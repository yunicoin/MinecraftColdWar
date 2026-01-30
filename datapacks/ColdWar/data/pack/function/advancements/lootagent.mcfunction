function pack:clear
tag @s add agent
clear @s
loot give @s loot pack:kits/agent
advancement revoke @s only pack:lootagent