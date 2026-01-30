scoreboard players set @s givedamageEvent1 0
scoreboard players set @s givedamageEvent2 0
scoreboard players set @s givedamageEvent3 0
# Эффекты
execute if entity @e[tag=game,scores={mode=2}] run effect give @s[team=2] minecraft:slowness 3 255 true
execute if entity @e[tag=game,scores={mode=2}] run effect give @s[team=2] minecraft:blindness 3 255 true
execute if entity @e[tag=game,scores={mode=2}] run effect give @s[team=2] minecraft:weakness 3 255 true
execute if entity @e[tag=game,scores={mode=2}] run effect give @s[team=2] minecraft:mining_fatigue 3 255 true

# Субтитры
execute if entity @e[tag=game,scores={mode=2}] run title @s[team=2] actionbar {"text":"Наслаждение...","color":"red"}

# Звук
execute if entity @e[tag=game,scores={mode=2}] at @s[team=2] run playsound minecraft:block.anvil.land block @a ~ ~ ~ 0.1