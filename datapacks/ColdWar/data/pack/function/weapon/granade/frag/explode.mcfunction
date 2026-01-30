particle minecraft:explosion ~ ~0.3 ~ 0.1 0.1 0.1 0.03 10 force
execute as @a[distance=3..4,] at @s run damage @s 1 minecraft:explosion
execute as @a[distance=2..3,] at @s run damage @s 5 minecraft:explosion
execute as @a[distance=1..2,] at @s run damage @s 10 minecraft:explosion
execute as @a[distance=..1] at @s run damage @s 15 minecraft:explosion
kill @s