# 饰纹陶罐特判（保存纹样）
data remove storage jk:bm box.pot
data modify storage jk:bm box.pot.slot set value 0
data modify storage jk:bm box.pot.item set from block ~ ~ ~ item
data modify storage jk:bm box.pot.x append from storage jk:bm box.pot
data modify entity @s Item.components.minecraft:container set from storage jk:bm box.pot.x
data modify entity @s Item.components.minecraft:pot_decorations set from block ~ ~ ~ sherds
