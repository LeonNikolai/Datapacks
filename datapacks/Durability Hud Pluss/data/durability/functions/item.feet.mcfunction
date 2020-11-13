execute if predicate item_check:feet/netherite run function durability:item/feet/netherite
execute if predicate item_check:feet/diamond run function durability:item/feet/diamond
execute if predicate item_check:feet/iron run function durability:item/feet/iron
execute if predicate item_check:feet/chainmail run function durability:item/feet/chainmail
execute if predicate item_check:feet/golden run function durability:item/feet/golden
execute if predicate item_check:feet/leather run function durability:item/feet/leather
execute store result score @s itm.damage run data get entity @s Inventory[{Slot: 100b}].tag.Damage
scoreboard players operation @s itm.feet.dr -= @s itm.damage
