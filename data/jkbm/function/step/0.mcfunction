## 执行实体：玩家，位置：脚下
execute if data block ~ ~ ~ lock run return run tellraw @s [{text: "[", color: "gold"}, {storage: "jk:bm", nbt: "txt.jkbm", interpret: true, color: "gold"}, {text: "] ", color: "gold"}, {storage: "jk:bm", nbt: "txt.tellraw.no_pack.lock", interpret: true, color: "yellow"}]
execute if data block ~ ~ ~ LootTable run return run tellraw @s [{text: "[", color: "gold"}, {storage: "jk:bm", nbt: "txt.jkbm", interpret: true, color: "gold"}, {text: "] ", color: "gold"}, {storage: "jk:bm", nbt: "txt.tellraw.no_pack.loot", interpret: true, color: "yellow"}]

summon item ~ ~ ~ {Item: {count: 1b, id: "white_wool"}, PickupDelay: 2, Tags: ["jkbm.drop_before"]}
execute as @n[type=item, tag=jkbm.drop_before] run function jkbm:step/1
