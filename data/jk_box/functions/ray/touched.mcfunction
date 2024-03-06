execute if score #version jk_box.int matches 203.. run function jk_box:ray/store_box203_check
function jk_box:ray/store_box

execute unless score #lang jk_box.int matches 1 run data modify entity @s Item.tag.display.Lore set value ['{"text":"这是一个被搬箱器打包的容器。","italic":false,"color":"gray"}']
execute if score #lang jk_box.int matches 1 run data modify entity @s Item.tag.display.Lore set value ['{"text":"This is a container that packed by BoxMover.","italic":false,"color":"gray"}']
data merge entity @s {PickupDelay: 2}
setblock ~ ~ ~ air replace