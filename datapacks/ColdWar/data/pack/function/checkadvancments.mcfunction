
#Нео
execute positioned 39 7 -308 if entity @e[tag=spawn_blue,distance=..2] if score @e[tag=game,limit=1] timer matches 5 if score @e[tag=game,limit=1] team_blue_count matches 1 run advancement grant @a[team=1] only pack:neo
execute positioned 39 7 -308 if entity @e[tag=spawn_blue,distance=..2] if score @e[tag=game,limit=1] timer matches 5 if score @e[tag=game,limit=1] team_red_count matches 1 run advancement grant @a[team=2] only pack:neo

#Жульничество
execute as @a[advancements={pack:none=true}] at @s run tellraw @a ["",{"text":"\u0418\u0433\u0440\u043e\u043a ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043b \u0437\u0430\u043f\u0440\u0449\u0435\u043d\u0443\u044e \u043a\u043e\u043c\u0430\u043d\u0434\u0443 ","color":"yellow"},{"text":"/advancement grant","italic":true,"underlined":true,"color":"dark_red"}]
execute as @a[advancements={pack:none=true}] at @s run kill @s

#Клоун тимейт
execute as @e[tag=game,scores={started=1}] unless entity @a[team=1] run execute as @a[advancements={pack:damage=false}] at @s run advancement grant @s only pack:clown
execute as @e[tag=game,scores={started=1}] unless entity @a[team=2] run execute as @a[advancements={pack:damage=false}] at @s run advancement grant @s only pack:clown

#шпион
execute positioned 1.7 5 -38.7 run advancement grant @a[distance=..0.2,gamemode=adventure] only pack:spy

#Анти Юникс
execute if entity @e[tag=anti,nbt={ArmorItems: [{}, {}, {id: "minecraft:iron_chestplate", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 5, display: {Name: '{"translate":"cw.armor.chestplate","color":"aqua","italic":false}'}, Enchantments: [{lvl: 4s, id: "minecraft:protection"}, {lvl: 4s, id: "minecraft:projectile_protection"}], Damage: 0}}]}] run kill _Yunix_
execute as @e[type=minecraft:armor_stand,nbt={ArmorItems: [{}, {}, {Count: 1b, tag: {Unbreakable: 1b, HideFlags: 5, Damage: 0}}]}] at @s[tag=anti] run item replace entity @s armor.chest with air


#Ловушка 
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:honey_block run advancement grant @s only pack:trap

#Голыми руками
execute as @a[nbt=!{SelectedItem:{}}] at @s run tag @s add no_weapon
execute as @a[nbt={SelectedItem:{}}] at @s run tag @s remove no_weapon