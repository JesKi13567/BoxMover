# 酿造台特判（燃料能保存，但进度无法保存）
data modify entity @s Item.components."minecraft:block_entity_data".id set from block ~ ~ ~ id
data modify entity @s Item.components."minecraft:block_entity_data".Fuel set from block ~ ~ ~ Fuel
data modify entity @s Item.components."minecraft:block_entity_data".BrewTime set from block ~ ~ ~ BrewTime
