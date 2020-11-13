advancement revoke @s from durability:inventory
scoreboard players reset @s itm.main.dr
scoreboard players reset @s itm.off.dr
scoreboard players reset @s itm.head.dr
scoreboard players reset @s itm.chest.dr
scoreboard players reset @s itm.legs.dr
scoreboard players reset @s itm.feet.dr
scoreboard players reset @s itm.head
scoreboard players reset @s itm.chest
scoreboard players reset @s itm.legs
scoreboard players reset @s itm.feet
execute unless predicate item_check:mainhand/empty run function durability:item.main
execute unless predicate item_check:offhand/empty run function durability:item.off
execute unless predicate item_check:head/empty run function durability:item.head
execute unless predicate item_check:chest/empty run function durability:item.chest
execute unless predicate item_check:legs/empty run function durability:item.legs
execute unless predicate item_check:feet/empty run function durability:item.feet
