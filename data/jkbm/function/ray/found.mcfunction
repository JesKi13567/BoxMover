# 生成掉落物
summon item ~ ~ ~ {Item: {count: 1b, id: "white_wool"}, PickupDelay: 1000, Tags: ["jkbm.drop_before"]}
execute as @e[type=item, tag=jkbm.drop_before, limit=1, sort=nearest] at @s run function jkbm:ray/touched
