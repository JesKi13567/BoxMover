# 玩家冷却
scoreboard players set @s jkbm.int 40
# 头位置生成射线
execute anchored eyes run summon marker ^ ^ ^ {Tags: ["jkbm.ray", "jkbm.ray_new"]}
# 射线最远长度
scoreboard players set @e[type=marker, tag=jkbm.ray_new] jkbm.int 30
# 方向对齐
data modify entity @e[type=marker, tag=jkbm.ray_new, limit=1, sort=nearest] Rotation set from entity @s Rotation
# 不再新
tag @e[tag=jkbm.ray_new] remove jkbm.ray_new
