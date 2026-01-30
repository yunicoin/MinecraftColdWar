execute as @e[type=minecraft:arrow,tag=sniper] at @s run execute store result entity @s damage float 0.15 run data get entity @s damage 10

execute as @a[tag=!zoom,nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"sniper",charged:true}}}}] at @s run tag @s add zoom
execute as @a[tag=zoom,nbt=!{SelectedItem:{components:{"minecraft:custom_data":{weapon:"sniper",charged:true}}}}] at @s run function pack:weapon/rifle/sniper/addons/unzoom
execute as @a[tag=zoom,tag=!sit] at @s run function pack:weapon/rifle/sniper/addons/unzoom


execute as @a[tag=!zoom,tag=sit,nbt={SelectedItem:{components:{"minecraft:custom_data":{weapon:"sniper",charged:false}}}}] at @s run function pack:weapon/rifle/sniper/addons/zoom



