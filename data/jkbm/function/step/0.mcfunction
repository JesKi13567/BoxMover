## 执行实体：玩家，位置：脚下
execute if data block ~ ~ ~ lock run return run function jkbm:step/no_pack
execute if data block ~ ~ ~ Lock run return run function jkbm:step/no_pack
execute if data block ~ ~ ~ LootTable run return run function jkbm:step/no_pack

summon item ~ ~ ~ {Item: {count: 1b, id: "white_wool"}, PickupDelay: 2, Tags: ["jkbm.drop_before"]}
execute as @n[type=item, tag=jkbm.drop_before] run function jkbm:step/1
