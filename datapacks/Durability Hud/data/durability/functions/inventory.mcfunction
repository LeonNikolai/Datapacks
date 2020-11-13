advancement revoke @s from durability:inventory
scoreboard players reset @s itm.main.dr
scoreboard players reset @s itm.off.dr
execute unless predicate item_check:mainhand/empty run function durability:item.main
execute unless predicate item_check:offhand/empty run function durability:item.off
execute if score @s itm.main.dr matches 0.. unless score @s itm.off.dr matches 0.. run function durability:msg.main
execute if score @s itm.main.dr matches 0.. if score @s itm.off.dr matches 0.. run function durability:msg.both
execute unless score @s itm.main.dr matches 0.. if score @s itm.off.dr matches 0.. run function durability:msg.off