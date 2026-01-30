scoreboard players set @e[tag=game] mode 4
function pack:modes/racewar/load

data modify block -4 4 -56 Text3 set value '{"text":"---","color":"dark_red"}'
data modify block -3 4 -56 Text3 set value '{"text":"---","color":"dark_red"}'


setblock -2 4 -56 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,color:"gold",translate:"cw.signs.game_type"},{click_event:{action:"run_command",command:"function pack:settings/mode/classic"},color:"aqua",text:"гонка вооружений"},""]},is_waxed:1b} replace