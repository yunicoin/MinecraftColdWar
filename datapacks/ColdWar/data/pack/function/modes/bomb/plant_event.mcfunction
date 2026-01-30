summon minecraft:armor_stand ~ ~ ~ {ShowArms:1b,Motion:[0,-10,0],Small:1b,Invulnerable:1b,Tags:["bomb"],Invisible:1b,Team:"2",DisabledSlots:4144702,equipment:{mainhand:{id:acacia_button},head:{id:daylight_detector}}}
scoreboard players set @e[tag=game] bombTimer 6000
scoreboard players set @e[tag=game] timer 30000
bossbar set minecraft:bomb visible true
bossbar set minecraft:game visible false
advancement revoke @s only pack:modes/bomb/plant