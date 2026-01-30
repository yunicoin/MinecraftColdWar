execute store result entity @s Motion[0] double 0.003 run random value -100..100
execute store result entity @s Motion[1] double 0.000401 run random value 1..100
execute store result entity @s Motion[2] double 0.003 run random value -100..100

data merge entity @s {Age:5998s}
tag @s add moly
tag @s remove moly2