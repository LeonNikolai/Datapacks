execute if predicate item_check:head/netherite run function durability:item/head/netherite
execute if predicate item_check:head/diamond run function durability:item/head/diamond
execute if predicate item_check:head/iron run function durability:item/head/iron
execute if predicate item_check:head/chainmail run function durability:item/head/chainmail
execute if predicate item_check:head/golden run function durability:item/head/golden
execute if predicate item_check:head/leather run function durability:item/head/leather
execute if predicate item_check:head/turtle run function durability:item/head/turtle
execute store result score @s itm.damage run data get entity @s Inventory[{Slot: 103b}].tag.Damage
scoreboard players operation @s itm.head.dr -= @s itm.damage
