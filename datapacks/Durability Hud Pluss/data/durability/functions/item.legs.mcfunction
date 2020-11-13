execute if predicate item_check:legs/netherite run function durability:item/legs/netherite
execute if predicate item_check:legs/diamond run function durability:item/legs/diamond
execute if predicate item_check:legs/iron run function durability:item/legs/iron
execute if predicate item_check:legs/chainmail run function durability:item/legs/chainmail
execute if predicate item_check:legs/golden run function durability:item/legs/golden
execute if predicate item_check:legs/leather run function durability:item/legs/leather
execute store result score @s itm.damage run data get entity @s Inventory[{Slot: 101b}].tag.Damage
scoreboard players operation @s itm.legs.dr -= @s itm.damage