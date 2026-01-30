scoreboard players set @e[tag=game] timer 45000
bossbar set minecraft:game players @a
bossbar set minecraft:game visible true
execute as @a[nbt=!{Inventory:[{id:"minecraft:arrow"}]}] at @s[nbt=!{Inventory:[{id:"minecraft:wooden_sword"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword"}]}] run function pack:clear
execute as @a[nbt=!{Inventory:[{id:"minecraft:arrow"}]}] at @s[nbt=!{Inventory:[{id:"minecraft:wooden_sword"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword"}]}] run loot give @s loot pack:kits/medic

execute as @a[team=1] at @s run playsound minecraft:monster.ct block @s ~ ~ ~ 10
execute as @a[team=2] at @s run playsound minecraft:monster.t.start block @s ~ ~ ~ 10

# Монстер
execute as @a[team=2] at @s run function pack:clear
loot give @a[team=2] loot pack:kits/monster
loot replace entity @a[team=2] armor.feet loot pack:items/armor/monster_boots
loot replace entity @a[team=2] armor.chest loot pack:items/armor/monster_chestplate
loot replace entity @a[team=2] armor.head loot pack:items/armor/monster_helmet
effect give @a[team=2] minecraft:speed 9999 1 true
effect give @a[team=2] minecraft:jump_boost 9999 1 true
execute as @a[team=2] at @s run attribute @s minecraft:generic.attack_speed base set 2.6