execute store result score @s hotbar.old run data get entity @s SelectedItemSlot
scoreboard players reset @s itm.main.dr
execute unless predicate item_check:mainhand/empty run function durability:item.main
title @s actionbar ""
execute if score @s itm.main.dr matches 0.. unless score @s itm.off.dr matches 0.. run function durability:msg.main
execute if score @s itm.main.dr matches 0.. if score @s itm.off.dr matches 0.. run function durability:msg.both
execute unless score @s itm.main.dr matches 0.. if score @s itm.off.dr matches 0.. run function durability:msg.off