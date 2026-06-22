# 展示架
execute if block ~ ~ ~ acacia_shelf run data modify entity @s Item.id set value "acacia_shelf"
execute if block ~ ~ ~ bamboo_shelf run data modify entity @s Item.id set value "bamboo_shelf"
execute if block ~ ~ ~ birch_shelf run data modify entity @s Item.id set value "birch_shelf"
execute if block ~ ~ ~ cherry_shelf run data modify entity @s Item.id set value "cherry_shelf"
execute if block ~ ~ ~ crimson_shelf run data modify entity @s Item.id set value "crimson_shelf"
execute if block ~ ~ ~ dark_oak_shelf run data modify entity @s Item.id set value "dark_oak_shelf"
execute if block ~ ~ ~ jungle_shelf run data modify entity @s Item.id set value "jungle_shelf"
execute if block ~ ~ ~ mangrove_shelf run data modify entity @s Item.id set value "mangrove_shelf"
execute if block ~ ~ ~ oak_shelf run data modify entity @s Item.id set value "oak_shelf"
execute if block ~ ~ ~ pale_oak_shelf run data modify entity @s Item.id set value "pale_oak_shelf"
execute if block ~ ~ ~ spruce_shelf run data modify entity @s Item.id set value "spruce_shelf"
execute if block ~ ~ ~ warped_shelf run data modify entity @s Item.id set value "warped_shelf"

data remove storage jk:bm box.x
function jkbm:step/2 {n: 0}
function jkbm:step/2 {n: 1}
function jkbm:step/2 {n: 2}
data modify entity @s Item.components."minecraft:container" set from storage jk:bm box.x

data modify storage jk:bm box.shelf.id set value "shelf"
data modify storage jk:bm box.shelf.align_items_to_bottom set from block ~ ~ ~ align_items_to_bottom
data modify entity @s Item.components."minecraft:block_entity_data" set from storage jk:bm box.shelf
