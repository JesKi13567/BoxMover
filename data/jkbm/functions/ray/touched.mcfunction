# 在容器方块位置，执行实体为掉落物
data modify entity @s Item.id set from block ~ ~ ~ id
# 区分
execute unless block ~ ~ ~ decorated_pot run function jkbm:ray/containers/global
execute if block ~ ~ ~ decorated_pot run function jkbm:ray/containers/decorated_pot
# 加上介绍
data modify entity @s Item.components.minecraft:lore set value ['{"text": "由搬箱器打包。", "italic": false, "color": "gray"}', '{"text": "Packed by BoxMover.", "italic": false, "color": "gray"}']
# 马上能捡起
data merge entity @s {PickupDelay: 2}
# 销毁原始方块
setblock ~ ~ ~ air replace
