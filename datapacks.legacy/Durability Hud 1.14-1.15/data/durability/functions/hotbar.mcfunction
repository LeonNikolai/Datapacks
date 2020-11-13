execute store result score @s hotbar.old run data get entity @s SelectedItemSlot
scoreboard players reset @s itm.main.dr
execute unless predicate item_check:mainhand/empty run function durability:item.main
title @s actionbar [{"score":{"name":"@s","objective":"itm.off.dr"}},{"text":" "},{"score":{"name":"@s","objective":"itm.main.dr"}}]