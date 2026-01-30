
execute as @a[scores={reload=100..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"pistol"}}}}] at @s run scoreboard players set @s ammo 12
execute as @a[scores={reload=100..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"pistol"}}}}] at @s run loot replace entity @s weapon.mainhand loot pack:items/weapons/pistol


	