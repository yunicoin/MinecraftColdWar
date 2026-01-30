

execute as @a[scores={reload=60..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"shotgun"}}}}] at @s run scoreboard players set @s ammo 2
execute as @a[scores={reload=60..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"shotgun"}}}}] at @s run loot replace entity @s weapon.mainhand loot pack:items/weapons/shotgun