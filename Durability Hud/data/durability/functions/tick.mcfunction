execute as @a store result score @s itm.info run data get entity @s SelectedItem.tag.Damage 1
execute as @a if data entity @s SelectedItem.tag.Damage run function durability:checkdur
execute as @a if data entity @s SelectedItem.tag.Damage run title @s actionbar [{"score":{"name":"@s","objective":"itm.output"}}]
execute as @a unless data entity @s SelectedItem.tag.Damage run title @s actionbar {"text":" "}
