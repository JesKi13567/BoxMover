## 执行实体：玩家，位置：脚下
execute if data block ~ ~ ~ Lock run return run tellraw @s [{"text": "[", "color": "gold"}, {"storage": "jk:bm", "nbt": "txt.jkbm", "color": "gold"}, {"text": "] ", "color": "gold"}, {"storage": "jk:bm", "nbt": "txt.tellraw.no_pack.lock", "color": "yellow"}]
execute if data block ~ ~ ~ LootTable run return run tellraw @s [{"text": "[", "color": "gold"}, {"storage": "jk:bm", "nbt": "txt.jkbm", "color": "gold"}, {"text": "] ", "color": "gold"}, {"storage": "jk:bm", "nbt": "txt.tellraw.no_pack.loot", "color": "yellow"}]

summon item ~ ~ ~ {Item: {count: 1b, id: "white_wool"}, PickupDelay: 2, Tags: ["jkbm.drop_before"]}
execute as @e[type=item, tag=jkbm.drop_before, limit=1, sort=nearest] run function jkbm:step/1
