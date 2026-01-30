clear @s
effect give @s minecraft:resistance 6 250


execute if entity @s[team=1] if score @e[tag=game,limit=1] team1helmet matches 1 run loot give @s loot pack:items/armor/helmet
item replace entity @s[team=1] armor.head from entity @s hotbar.0
item replace entity @s[team=1] hotbar.0 with minecraft:air

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1chestarmor matches 1 run loot give @s loot pack:items/armor/sniper_chestplate
execute if entity @s[team=1] if score @e[tag=game,limit=1] team1chestarmor matches 2 run loot give @s loot pack:items/armor/chestplate
item replace entity @s[team=1] armor.chest from entity @s hotbar.0
item replace entity @s[team=1] hotbar.0 with minecraft:air

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1knife matches 1 run loot give @s loot pack:items/weapons/knife

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1auto matches 1 run loot give @s loot pack:items/weapons/assault_rifle

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1pils matches 1 run loot give @s loot pack:items/pill

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1medical matches 1 run loot give @s loot pack:items/first_aid_kit

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1mina matches 1 run loot give @s loot pack:items/mine

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1smoke matches 1 run loot give @s loot pack:items/grenades/smoke_grenade

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1sniper matches 1 run loot give @s loot pack:items/weapons/sniper_rifle

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1ammo matches 0 run loot give @s loot pack:items/arrow

execute if entity @s[team=1] if score @e[tag=game,limit=1] team1ammo matches 1 run give @s minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionEffects:[{Id:9,Duration:480},{Id:20,Duration:320}],display:{Name:"\"Патрон++\"",Lore:["химическое оружие"]}} 64


execute if entity @s[team=1] if score @e[tag=game,limit=1] team1knife matches 1 if score @e[tag=game,limit=1] team1auto matches 1 if score @e[tag=game,limit=1] team1pils matches 1 if score @e[tag=game,limit=1] team1medical matches 1 if score @e[tag=game,limit=1] team1mina matches 1 if score @e[tag=game,limit=1] team1mina matches 1 if score @e[tag=game,limit=1] team1smoke matches 1 if score @e[tag=game,limit=1] team1sniper matches 1 if entity @s[team=1] if score @e[tag=game,limit=1] team1ammo matches 1 if score @e[tag=game,limit=1] team1helmet matches 1 if score @e[tag=game,limit=1] team1chestarmor matches 2 run advancement grant @s only pack:terminator






execute if entity @s[team=2] if score @e[tag=game,limit=1] team2helmet matches 1 run loot give @s loot pack:items/armor/helmet
item replace entity @s[team=2] armor.head from entity @s hotbar.0
item replace entity @s[team=2] hotbar.0 with minecraft:air

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2chestarmor matches 1 run loot give @s loot pack:items/armor/sniper_chestplate
execute if entity @s[team=2] if score @e[tag=game,limit=1] team2chestarmor matches 2 run loot give @s loot pack:items/armor/chestplate
item replace entity @s[team=2] armor.chest from entity @s hotbar.0
item replace entity @s[team=2] hotbar.0 with minecraft:air

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2knife matches 1 run loot give @s loot pack:items/weapons/knife

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2auto matches 1 run loot give @s loot pack:items/weapons/assault_rifle

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2pils matches 1 run loot give @s loot pack:items/pill

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2medical matches 1 run loot give @s loot pack:items/first_aid_kit

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2mina matches 1 run loot give @s loot pack:items/mine

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2smoke matches 1 run loot give @s loot pack:items/grenades/smoke_grenade

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2sniper matches 1 run loot give @s loot pack:items/weapons/sniper_rifle

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2ammo matches 0 run loot give @s loot pack:items/arrow

execute if entity @s[team=2] if score @e[tag=game,limit=1] team2ammo matches 1 run give @s minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionEffects:[{Id:9,Duration:480},{Id:20,Duration:320}],display:{Name:"\"Патрон++\"",Lore:["химическое оружие"]}} 64


execute if entity @s[team=2] if score @e[tag=game,limit=1] team2knife matches 1 if score @e[tag=game,limit=1] team2auto matches 1 if score @e[tag=game,limit=1] team2pils matches 1 if score @e[tag=game,limit=1] team2medical matches 1 if score @e[tag=game,limit=1] team2mina matches 1 if score @e[tag=game,limit=1] team2mina matches 1 if score @e[tag=game,limit=1] team2smoke matches 1 if score @e[tag=game,limit=1] team2sniper matches 1 if entity @s[team=1] if score @e[tag=game,limit=1] team2ammo matches 1 if score @e[tag=game,limit=1] team2helmet matches 1 if score @e[tag=game,limit=1] team2chestarmor matches 2 run advancement grant @s only pack:terminator




loot give @s loot pack:items/weapons/pistol