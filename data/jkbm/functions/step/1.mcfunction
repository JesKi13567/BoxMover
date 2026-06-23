## 执行实体：掉落物，位置：不变
execute if block ~ ~ ~ decorated_pot run function jkbm:step/type/decorated_pot
execute unless block ~ ~ ~ decorated_pot run function jkbm:step/type/_global

execute if data block ~ ~ ~ CustomName run data modify entity @s Item.components."minecraft:custom_name" set from block ~ ~ ~ CustomName
execute if data block ~ ~ ~ components."minecraft:custom_name" run data modify entity @s Item.components."minecraft:custom_name" set from block ~ ~ ~ components."minecraft:custom_name"

item modify entity @s container.0 {"function": "set_lore", "entity": "this", "mode": "replace_all", "lore": [[{"storage": "jk:bm", "nbt": "txt.lore.pack_by_bm", "italic": false, "color": "gray"}]]}
setblock ~ ~ ~ air replace
