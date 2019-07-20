execute as @a[scores={Ndeath=1..}] if block ~ ~ ~ air at @s run function nether:respawntrigger
execute as @a[tag=limbo] at @s run function nether:limbo
execute as @a[scores={Ndeath=1..},nbt={Health:20.0f}] if block ~ ~ ~ air at @s run function nether:deathtrigger