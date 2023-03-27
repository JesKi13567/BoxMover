data modify entity @s Item.id set from block ~ ~ ~ id
data modify entity @s Item.tag.BlockEntityTag.Items set from block ~ ~ ~ Items
data modify entity @s Item.tag.display.Name set from block ~ ~ ~ CustomName
data modify entity @s Item.tag.display.Lore set value ['{"text":"这是一个被搬箱器打包的容器。","italic":false,"color":"gray"}']
data merge entity @s {PickupDelay:5}
setblock ~ ~ ~ air replace