execute if predicate item_check:chest/netherite run function durability:item/chest/netherite
execute if predicate item_check:chest/diamond run function durability:item/chest/diamond
execute if predicate item_check:chest/iron run function durability:item/chest/iron
execute if predicate item_check:chest/chainmail run function durability:item/chest/chainmail
execute if predicate item_check:chest/golden run function durability:item/chest/golden
execute if predicate item_check:chest/leather run function durability:item/chest/leather
execute if predicate item_check:chest/elytra run function durability:item/chest/elytra
execute if predicate item_check:chest/elytra_broken run function durability:item/chest/elytra_broke
execute store result score @s itm.damage run data get entity @s Inventory[{Slot:102b}].tag.Damage
scoreboard players operation @s itm.chest.dr -= @s itm.damage

