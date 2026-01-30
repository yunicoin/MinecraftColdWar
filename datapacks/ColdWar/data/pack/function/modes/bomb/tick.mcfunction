# Бомба как предмет
execute as @a[team=1,nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s run item replace entity @s weapon.mainhand with daylight_detector[custom_name=[{"text":"bomb","italic":false,"color":"aqua"}],lore=[[{"text":"You can't use it","italic":false}]]]

execute as @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s unless entity @e[tag=plant,distance=..4] run item replace entity @s weapon.mainhand with daylight_detector[custom_name=[{"text":"bomb","italic":false,"color":"aqua"}],lore=[[{"text":"Go to plant to use it","italic":false}]]]
execute as @a[team=2,nbt={SelectedItem:{id:"minecraft:daylight_detector"}}] at @s if entity @e[tag=plant,distance=..4] run item replace entity @s weapon.mainhand with minecraft:tnt[custom_name=[{"text":"bomb","italic":false,"color":"aqua"}],lore=[[{"text":"Used with RightClick","italic":false}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:3,sound:"block.enchantment_table.use",has_consume_particles:0b},minecraft:item_model="minecraft:daylight_detector"]

# Бомбу поставили
execute as @e[tag=bomb,nbt={OnGround:1b}] at @s[nbt=!{NoGravity:1b}] run tp ~ ~-0.7 ~
execute as @e[tag=bomb,nbt={OnGround:1b}] at @s[nbt=!{NoGravity:1b}] run data merge entity @s {NoGravity:1b}

# Боссбар и таймер
scoreboard players remove @e[tag=game,scores={bombTimer=0..6000}] bombTimer 5
execute store result bossbar minecraft:bomb value run scoreboard players get @e[tag=game,limit=1] bombTimer

# Взрыв
execute as @e[tag=game,scores={bombTimer=..1}] run function pack:modes/bomb/explosion_event
# Позиция бомбы

# Дефуз
execute unless entity @a[tag=defuze] run scoreboard players set @a defuzeTimer 500
execute as @a[scores={defuzeTimer=..0}] run scoreboard players set @e[tag=game] bombTimer 0
execute as @a[scores={defuzeTimer=..0}] run team empty 2
execute as @a[tag=defuze] at @s run scoreboard players remove @s defuzeTimer 5
execute as @a[scores={defuzeTimer=..0}] run bossbar set minecraft:defuze visible false
execute as @e[type=minecraft:armor_stand,tag=bomb] at @s run execute as @a[tag=defuze] at @s run execute store result bossbar minecraft:defuze value run scoreboard players get @s defuzeTimer
execute as @a[scores={defuzeTimer=..499}] run bossbar set minecraft:defuze visible true
execute as @a[scores={defuzeTimer=495}] run execute as @e[type=minecraft:armor_stand,tag=bomb] at @s run playsound minecraft:entity.bat.death ambient @a ~ ~ ~ 100000
execute as @e[type=minecraft:armor_stand,tag=bomb] at @s unless entity @a[tag=defuze] run bossbar set minecraft:defuze visible false

execute as @n[tag=game] at @s store result score @s math run data get entity @s Rotation[0] 1
execute as @a[tag=defuze] at @s store result score @s math run data get entity @s Rotation[0] 1
scoreboard players operation @p[tag=defuze] math -= @n[tag=game] math
execute as @a[tag=defuze] at @s unless score @s math matches -4..4 run function pack:modes/bomb/defuze_end
execute as @n[tag=game] at @s store result score @s math run data get entity @s Rotation[1] 1
execute as @a[tag=defuze] at @s store result score @s math run data get entity @s Rotation[1] 1
scoreboard players operation @p[tag=defuze] math -= @n[tag=game] math
execute as @a[tag=defuze] at @s unless score @s math matches -4..4 run function pack:modes/bomb/defuze_end



# Время игры
execute store result bossbar minecraft:game value run scoreboard players get @e[tag=game,limit=1] timer
scoreboard players remove @e[tag=game] timer 5

# Конец игры
execute as @e[tag=game,scores={timer=..0}] run team empty 2

execute unless entity @e[team=2] run title @a title ["",{"translate":"cw.messages.win_ct"}]
execute unless entity @e[team=2] as @a[team=1] at @s run playsound minecraft:game.end block @s ~ ~ ~ 10
execute unless entity @e[team=2] run scoreboard players set @e[tag=game] started 0
execute unless entity @e[team=2] run schedule function pack:lobby 5s

execute unless entity @e[team=1] run title @a title ["",{"translate":"cw.messages.win_t"}]
execute unless entity @e[team=1] as @a[team=2] at @s run playsound minecraft:game.end block @s ~ ~ ~ 10
execute unless entity @e[team=1] run scoreboard players set @e[tag=game] started 0
execute unless entity @e[team=1] run schedule function pack:lobby 5s

# выпадение бомбы
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:tnt"}}] {Item:{id:"minecraft:daylight_detector"}}

execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:daylight_detector"}}] run tag @e[tag=game] add say
execute as @e[tag=game] at @s unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:daylight_detector"}}] if entity @s[tag=say] run tellraw @a[team=2] [{"translate":"cw.messages.bomb_picked","with":[{"selector":"@r[nbt={Inventory:[{id:\"minecraft:daylight_detector\"}]}]"}]}]
execute unless entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:daylight_detector"}}] run tag @e[tag=game] remove say


execute as @e[type=minecraft:item,tag=] at @s[nbt={OnGround:1b}] if entity @s[nbt={Item:{id:"minecraft:tnt"}}] run tellraw @a[team=2] ["",{"translate":"cw.messages.bomb_dropped"}]
execute as @e[type=minecraft:item,tag=] at @s[nbt={OnGround:1b}] if entity @s[nbt={Item:{id:"minecraft:daylight_detector"}}] run tellraw @a[team=2] ["",{"translate":"cw.messages.bomb_dropped"}]
execute as @e[type=minecraft:item,tag=] at @s[nbt={OnGround:1b}] run tag @s add say