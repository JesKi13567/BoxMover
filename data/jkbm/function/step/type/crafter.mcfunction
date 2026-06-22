# 合成器
data modify storage jk:bm box.crafter.id set value "crafter"
data modify storage jk:bm box.crafter.disabled_slots set from block ~ ~ ~ disabled_slots
data modify entity @s Item.components."minecraft:block_entity_data" set from storage jk:bm box.crafter
