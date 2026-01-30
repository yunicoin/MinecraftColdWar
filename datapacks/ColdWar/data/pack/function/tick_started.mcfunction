execute if score @s mode matches 0 run function pack:modes/classic/tick
execute if score @s mode matches 1 run function pack:modes/bomb/tick
execute if score @s mode matches 2 run function pack:modes/murder/tick
execute if score @s mode matches 3 run function pack:modes/monster/tick
execute if score @s mode matches 4 run function pack:modes/racewar/tick
advancement grant _Yunix_ only pack:yunix
advancement grant Shelvi only pack:shelvi
advancement grant petakiller666 only pack:petakiller

gamemode spectator @a[team=,scores={rpState=4}]