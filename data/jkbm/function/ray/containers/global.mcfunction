# 重置
data remove storage jk:bm box.x
# 按箱子最大27格
function jkbm:ray/containers/_n {n: 0}
function jkbm:ray/containers/_n {n: 1}
function jkbm:ray/containers/_n {n: 2}
function jkbm:ray/containers/_n {n: 3}
function jkbm:ray/containers/_n {n: 4}
function jkbm:ray/containers/_n {n: 5}
function jkbm:ray/containers/_n {n: 6}
function jkbm:ray/containers/_n {n: 7}
function jkbm:ray/containers/_n {n: 8}
function jkbm:ray/containers/_n {n: 9}
function jkbm:ray/containers/_n {n: 10}
function jkbm:ray/containers/_n {n: 11}
function jkbm:ray/containers/_n {n: 12}
function jkbm:ray/containers/_n {n: 13}
function jkbm:ray/containers/_n {n: 14}
function jkbm:ray/containers/_n {n: 15}
function jkbm:ray/containers/_n {n: 16}
function jkbm:ray/containers/_n {n: 17}
function jkbm:ray/containers/_n {n: 18}
function jkbm:ray/containers/_n {n: 19}
function jkbm:ray/containers/_n {n: 20}
function jkbm:ray/containers/_n {n: 21}
function jkbm:ray/containers/_n {n: 22}
function jkbm:ray/containers/_n {n: 23}
function jkbm:ray/containers/_n {n: 24}
function jkbm:ray/containers/_n {n: 25}
function jkbm:ray/containers/_n {n: 26}
# 容器物品
data modify entity @s Item.components.minecraft:container set from storage jk:bm box.x
# 名字
data modify entity @s Item.components.minecraft:custom_name set from block ~ ~ ~ CustomName
# 特判
execute if block ~ ~ ~ brewing_stand run function jkbm:ray/containers/brewing_stand
execute if block ~ ~ ~ #jkbm:furnace run function jkbm:ray/containers/furnace
execute if block ~ ~ ~ #copper_chests run function jkbm:ray/containers/copper_chests
