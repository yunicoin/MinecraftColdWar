

execute as @a[scores={reload=120..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"sniper"}}}}] at @s run scoreboard players set @s ammo 1
execute as @a[scores={reload=120..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"sniper"}}}}] at @s run loot replace entity @s weapon.mainhand loot pack:items/weapons/sniper