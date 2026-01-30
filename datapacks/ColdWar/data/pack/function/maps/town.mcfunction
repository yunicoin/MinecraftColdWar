tp @e[tag=spawn_blue] -10 6 11
tp @e[tag=spawn_red] 26 6 -3
setblock -3 4 -56 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,color:"gold",translate:"cw.signs.map"},{click_event:{action:"run_command",command:"function pack:maps/bandit"},color:"aqua",text:"Город"},""]},is_waxed:1b}
execute positioned -7 5 -34 run kill @e[distance=..1,type=minecraft:glow_item_frame]
summon minecraft:glow_item_frame -6.97 5.50 -33.50 {Facing: 5b, Rotation: [270.0f, 0.0f], Item: {id: "minecraft:flint", Count: 1b, components:{"minecraft:custom_data":{map:"town"}}}, Invisible: 1b, Fixed: 1b}