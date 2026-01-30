# Классы
fill 1 5 -47 1 3 -43 minecraft:iron_block
fill -7 5 -47 -7 3 -43 minecraft:iron_block

# Команды
fill -1 5 -32 -5 5 -32 air replace minecraft:oak_wall_sign
setblock -1 5 -32 oak_wall_sign{Color:"orange",GlowingText:1b,Text1:'{"translate":"cw.signs.red"}'}
setblock -5 5 -32 oak_wall_sign{Color:"light_blue",GlowingText:1b,Text1:'{"translate":"cw.signs.blue"}'}
team modify 1 prefix [{"translate":"cw.signs.blue"}, " "]
team modify 2 prefix [{"translate":"cw.signs.red"}, " "]

# Боссбар
bossbar set minecraft:game max 60000
clear @a


function pack:maps/newmode