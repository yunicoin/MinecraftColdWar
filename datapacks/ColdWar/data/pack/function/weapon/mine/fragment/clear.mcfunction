execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:small_amethyst_bud run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:25,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]},{Type:0,Colors:[I;1973019],FadeColors:[I;1973019]}],Flight:-1}}}}
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:small_amethyst_bud run setblock ~ ~ ~ air
execute as @e[tag=mine] at @s unless block ~ ~1 ~ minecraft:small_amethyst_bud run kill @s
execute as @e[type=item,nbt={OnGround:1b}] at @s[nbt={Item:{id:"minecraft:wheat_seeds"}}] run summon armor_stand ~ ~-1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b,Tags:["mine"]}
execute as @e[tag=mine] at @s if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:small_amethyst_bud
execute as @e[type=item,nbt={OnGround:1b}] at @s[nbt={Item:{id:"minecraft:wheat_seeds"}}] run kill @s




execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:medium_amethyst_bud run effect give @s minecraft:slowness 3 100 true
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:medium_amethyst_bud run effect give @s minecraft:glowing 3 1 true

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:medium_amethyst_bud run setblock ~ ~ ~ air
execute as @e[tag=detector] at @s unless block ~ ~1 ~ minecraft:medium_amethyst_bud run kill @s
execute as @e[type=item,nbt={OnGround:1b}] at @s[nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run summon armor_stand ~ ~-1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b,Tags:["detector"]}
execute as @e[tag=detector] at @s if block ~ ~1 ~ minecraft:air run setblock ~ ~1 ~ minecraft:medium_amethyst_bud
execute as @e[type=item,nbt={OnGround:1b}] at @s[nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run kill @s
