execute as @s in minecraft:the_nether run tp ~ 128 ~
say hi
tag @s remove fireball
scoreboard players reset @s Ndeath

execute as @a at @s if block ~ ~-1 ~ minecraft:netherrack if block ~ ~ ~ air if block ~ ~1 ~ air run say hi