tag @a[scores={sit=1..}] add sit
tag @a[scores={sit=0}] remove sit

# Всегда
effect give @a saturation infinite 255 true
spawnpoint @a -3 3 -36


execute as @e[type=minecraft:arrow] at @s run function pack:weapon/vector/arrow
execute as @e[type=minecraft:arrow] at @s run data merge entity @s {NoGravity:1b}
execute as @e[type=minecraft:arrow] at @s unless entity @r[distance=..50,gamemode=!spectator] run kill @s

execute as @e[type=item] at @s run function pack:weapon/vector/granade_bounce


# Евенты
execute as @a[scores={leaveEvent=1..}] run function pack:events/leave
execute as @a[scores={deathEvent=1..}] run function pack:events/death

execute as @a[scores={givedamageEvent1=1..}] run function pack:events/givedamage
execute as @a[scores={givedamageEvent2=1..}] run function pack:events/givedamage
execute as @a[scores={givedamageEvent3=1..}] run function pack:events/givedamage

execute as @a[scores={takedamageEvent1=1..}] run function pack:events/takedamage
execute as @a[scores={takedamageEvent2=1..}] run function pack:events/takedamage
execute as @a[scores={takedamageEvent3=1..}] run function pack:events/takedamage





# Когда игра не начата
execute as @e[tag=game,scores={started=0}] run scoreboard players set @s anim 0
execute as @e[tag=game,scores={started=0}] run effect give @a regeneration 1 255 true
execute as @e[tag=game,scores={started=0}] run effect give @a resistance 1 255 true
execute as @e[tag=game,scores={started=0}] run kill @e[type=item,tag=]

# Когда игра начата


execute as @e[tag=game,scores={started=1}] run function pack:tick_started

# Анимация старта
scoreboard players add @e[tag=game,scores={anim=1..}] anim 5
execute as @e[tag=game,scores={anim=5..10}] at @e run playsound minecraft:block.note_block.banjo block @a
execute as @e[tag=game,scores={anim=100..105}] at @e run playsound minecraft:block.note_block.banjo block @a
execute as @e[tag=game,scores={anim=200..205}] at @e run playsound minecraft:block.note_block.banjo block @a
execute as @e[tag=game,scores={anim=300..305}] at @e run playsound minecraft:entity.small_fireball.hit_player block @a



execute as @a[scores={killEvent=1..}] run function pack:events/kill 




execute as @a[nbt={equipment:{offhand:{}}}] at @s unless data entity @s equipment.offhand.components."minecraft:custom_data".offhanded run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @a[nbt={equipment:{offhand:{}}}] at @s unless data entity @s equipment.offhand.components."minecraft:custom_data".offhanded run item replace entity @s weapon.offhand with air




effect give @a[tag=ninja] minecraft:strength 9999 3 true
execute as @a[gamemode=adventure] at @s run execute positioned ^ ^ ^2.51 run effect clear @a[distance=..2.5,tag=ninja] minecraft:strength

function pack:weapon/granade/tick
function pack:weapon/rifle/tick





schedule function pack:tick 1t
scoreboard players set @a[scores={sit=1..}] sit 0
