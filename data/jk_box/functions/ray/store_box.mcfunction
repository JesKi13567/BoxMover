# 容器与内容物打包
# transfer container 2 item
data modify entity @s Item.id set from block ~ ~ ~ id
data modify entity @s Item.tag.BlockEntityTag.Items set from block ~ ~ ~ Items
data modify entity @s Item.tag.BlockEntityTag.Fuel set from block ~ ~ ~ Fuel
data modify entity @s Item.tag.display.Name set from block ~ ~ ~ CustomName