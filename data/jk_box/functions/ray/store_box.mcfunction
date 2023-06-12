# 就是设定容器id和容器内物品的转换
# transfer container 2 item
data modify entity @s Item.id set from block ~ ~ ~ id
data modify entity @s Item.tag.BlockEntityTag.Items set from block ~ ~ ~ Items
data modify entity @s Item.tag.display.Name set from block ~ ~ ~ CustomName
execute unless score #lang jk_box.int matches 1 run data modify entity @s Item.tag.display.Lore set value ['{"text":"这是一个被搬箱器打包的容器。","italic":false,"color":"gray"}']
execute if score #lang jk_box.int matches 1 run data modify entity @s Item.tag.display.Lore set value ['{"text":"This is a container that packed by BoxMover.","italic":false,"color":"gray"}']
data merge entity @s {PickupDelay:5}
setblock ~ ~ ~ air replace