# Классы
fill 1 5 -47 1 3 -43 minecraft:air
fill -7 5 -47 -7 3 -43 minecraft:air

# Команды
fill -1 5 -32 -5 5 -32 air replace minecraft:oak_wall_sign
setblock -1 5 -32 oak_wall_sign{Color:"orange",GlowingText:1b,Text1:'{"translate":"cw.signs.terrorist"}'}
setblock -5 5 -32 oak_wall_sign{Color:"light_blue",GlowingText:1b,Text1:'{"translate":"cw.signs.counterterrorist"}'}
team modify 1 prefix [{"translate":"cw.signs.counterterrorist"}, " "]
team modify 2 prefix [{"translate":"cw.signs.terrorist"}, " "]

clear @a