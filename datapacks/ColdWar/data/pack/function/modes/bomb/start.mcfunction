bossbar set minecraft:defuze players @a
bossbar set minecraft:bomb players @a
bossbar set minecraft:game players @a
bossbar set minecraft:game visible true
scoreboard players set @a defuzeTimer 500
scoreboard players set @e[tag=game] bombTimer 6001
scoreboard players set @e[tag=game] timer 30000
bossbar set minecraft:defuze players @a[level=10000]
bossbar set minecraft:defuze players @a[team=1]
give @r[team=2] minecraft:tnt[custom_name=[{"text":"bomb","italic":false,"color":"aqua"}],lore=[[{"text":"Used with RightClick","italic":false}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:3,sound:"block.enchantment_table.use",has_consume_particles:0b},minecraft:item_model="minecraft:daylight_detector"]


execute as @a[team=1] at @s run playsound minecraft:bomb.ct block @s ~ ~ ~ 10
execute as @a[team=2] at @s run playsound minecraft:bomb.t block @s ~ ~ ~ 10