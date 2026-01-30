scoreboard players set @e[tag=game] mode 0
function pack:modes/classic/load
function pack:maps/town
function pack:settings/inventorydrop/disable

setblock 10 4 -45 minecraft:stone_button[face=wall,facing=west,powered=false]
setblock 8 4 -47 minecraft:stone_button[face=wall,facing=south,powered=false]
setblock -10 4 -47 minecraft:stone_button[face=wall,facing=south,powered=false]
setblock -12 4 -47 minecraft:stone_button[face=wall,facing=south,powered=false]
setblock -14 4 -47 minecraft:stone_button[face=wall,facing=south,powered=false]
setblock -12 4 -43 minecraft:stone_button[face=wall,facing=north,powered=false]


setblock -2 4 -56 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,color:"gold",translate:"cw.signs.game_type"},{click_event:{action:"run_command",command:"function pack:settings/mode/bomb"},color:"aqua",text:"обычный"},""]},is_waxed:1b} replace