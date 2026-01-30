scoreboard players set @e[tag=game] mode 3
function pack:modes/monster/load


setblock 8 4 -47 air
setblock 10 4 -45 air
setblock -14 4 -47 air
setblock -12 4 -47 air
setblock -10 4 -47 air
setblock -12 4 -43 air



setblock -2 4 -56 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,color:"gold",translate:"cw.signs.game_type"},{click_event:{action:"run_command",command:"function pack:settings/mode/racewar"},color:"aqua",text:"монстр"},""]},is_waxed:1b} replace