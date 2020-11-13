advancement revoke @s from durability:inventory
scoreboard players reset @s itm.main.dr
scoreboard players reset @s itm.off.dr
execute unless predicate item_check:mainhand/empty run function durability:item.main
execute unless predicate item_check:offhand/empty run function durability:item.off
title @s actionbar [{"score":{"name":"@s","objective":"itm.off.dr"}},{"text":" "},{"score":{"name":"@s","objective":"itm.main.dr"}}]
