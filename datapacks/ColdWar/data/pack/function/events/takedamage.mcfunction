scoreboard players set @s takedamageEvent1 0
scoreboard players set @s takedamageEvent2 0
scoreboard players set @s takedamageEvent3 0

# Эффекты
execute if entity @e[tag=game,scores={mode=2}] run effect give @s[team=1] minecraft:speed 10 0 true

# Субтитры
execute if entity @e[tag=game,scores={mode=2}] run title @s[team=1] actionbar {"text":"Адреналин","color":"yellow"}
