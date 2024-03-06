# 检测在工作台上制作
# check if items on the crafting table
execute as @e[type=item,nbt={Item: {id: "minecraft:diamond", Count: 1b}}] at @s unless entity @e[distance=..1,tag=jkbm.d] if block ~ ~-1 ~ crafting_table run tag @s add jkbm.d
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", Count: 1b}}] at @s unless entity @e[distance=..1,tag=jkbm.i] if block ~ ~-1 ~ crafting_table run tag @s add jkbm.i
execute as @e[type=item,nbt={Item: {id: "minecraft:gold_ingot", Count: 1b}}] at @s unless entity @e[distance=..1,tag=jkbm.g] if block ~ ~-1 ~ crafting_table run tag @s add jkbm.g
tag @e[tag=jkbm.d] add jkbm.c
tag @e[tag=jkbm.i] add jkbm.c
tag @e[tag=jkbm.g] add jkbm.c
execute as @e[tag=jkbm.c] at @s unless block ~ ~-1 ~ crafting_table run function jk_box:craft/remove
# 钻石固定位置
# position by diamond
execute as @e[tag=jkbm.d] at @s run tp @e[tag=jkbm.c,tag=!jkbm.d,distance=..1] @s
# 配方为1铁锭，1金锭，1钻石
# recipe: 1 iron ingot, 1 gold ingot, 1 diamond
execute as @e[tag=jkbm.d,type=item,nbt={Item: {id: "minecraft:diamond", Count: 1b}}] at @s if entity @e[distance=..1,type=item,tag=jkbm.c,nbt={Item: {id: "minecraft:iron_ingot", Count: 1b}}] if entity @e[distance=..1,type=item,tag=jkbm.c,nbt={Item: {id: "minecraft:gold_ingot", Count: 1b}}] run function jk_box:craft/get