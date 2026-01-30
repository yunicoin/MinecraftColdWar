
execute as @a[scores={reload=80..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"autorifle"}}}}] at @s run scoreboard players set @s ammo 25
execute as @a[scores={reload=80..},nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"autorifle"}}}}] at @s run loot replace entity @s weapon.mainhand loot pack:items/weapons/autorifle


	