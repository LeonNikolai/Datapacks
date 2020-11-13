execute store result score @s hotbar run data get entity @s SelectedItemSlot
execute unless score @s hotbar = @s hotbar.old run function durability:hotbar
