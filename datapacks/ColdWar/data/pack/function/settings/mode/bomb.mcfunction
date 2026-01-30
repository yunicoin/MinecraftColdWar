scoreboard players set @e[tag=game] mode 1
function pack:modes/bomb/load


setblock -2 4 -56 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,color:"gold",translate:"cw.signs.game_type"},{click_event:{action:"run_command",command:"function pack:settings/mode/murder"},color:"aqua",text:"бомба"},""]},is_waxed:1b} replace