advancement revoke @s only portal:dimension.trigger
execute if data entity @s {Dimension:"minecraft:overworld"} run tellraw @a [{"text":" → ","color":"aqua"},{"selector":"@s"},{"text":" entered The Overworld"}]
execute if data entity @s {Dimension:"minecraft:the_end"} run tellraw @a [{"text":" → ","color":"aqua"},{"selector":"@s"},{"text":" entered The End"}]
execute if data entity @s {Dimension:"minecraft:the_nether"} run tellraw @a [{"text":" → ","color":"aqua"},{"selector":"@s"},{"text":" entered The Nether"}]
execute unless data entity @s {Dimension:"minecraft:overworld"} unless data entity @s {Dimension:"minecraft:the_end"} unless data entity @s {Dimension:"minecraft:the_nether"} run tellraw @a [{"text":" → ","color":"aqua"},{"selector":"@s"},{"text":" entered the dimension "},{"nbt":"Dimension","entity":"@s"}]

