# 不存在直接跳过
$execute unless data block ~ ~ ~ Items[$(n)] run return 0

# 重新组合（方块实体跟掉落物数据储存方式不一）
data remove storage jk:bm box.this
$data modify storage jk:bm box.this.item set from block ~ ~ ~ Items[$(n)]
execute store result storage jk:bm box.this.slot int 1 run data get storage jk:bm box.this.item.Slot
data remove storage jk:bm box.this.item.Slot
data modify storage jk:bm box.x append from storage jk:bm box.this
