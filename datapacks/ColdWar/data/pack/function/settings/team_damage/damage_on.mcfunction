team modify 1 friendlyFire true
team modify 2 friendlyFire true


setblock -1 4 -56 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,color:"gold",translate:"cw.signs.friendly_fire"},{click_event:{action:"run_command",command:"function pack:settings/team_damage/damage_off"},color:"green",translate:"cw.signs.enabled"},""]},is_waxed:1b} replace