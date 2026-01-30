execute as @a[nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run scoreboard players add @s reload 1


function pack:weapon/rifle/autorifle/reload

function pack:weapon/rifle/pistol/reload

function pack:weapon/rifle/shotgun/reload
function pack:weapon/rifle/shotgun/tick

function pack:weapon/rifle/sniper/reload
function pack:weapon/rifle/sniper/tick

execute as @a[scores={reload=1..},nbt=!{SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run scoreboard players set @s reload 0
