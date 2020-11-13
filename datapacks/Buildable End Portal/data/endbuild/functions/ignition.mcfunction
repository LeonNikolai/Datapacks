advancement revoke @s only endbuild:ignition
execute as @e[type=minecraft:end_crystal, distance=..6] at @s if block ~ ~-1 ~ minecraft:obsidian run function endbuild:portalcheck