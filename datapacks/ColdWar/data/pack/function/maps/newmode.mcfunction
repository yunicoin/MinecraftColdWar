tp @e[tag=spawn_blue] 308 8 -690
tp @e[tag=spawn_red] 340 8 -590

execute positioned -7 5 -34 run kill @e[distance=..1,type=minecraft:glow_item_frame]
summon minecraft:glow_item_frame -6.97 5.50 -33.50 {Facing: 5b, Rotation: [270.0f, 0.0f], Item: {id: "minecraft:filled_map", Count: 1b, components:{"minecraft:custom_data":{map:"newmode"}}}, Invisible: 1b, Fixed: 1b}