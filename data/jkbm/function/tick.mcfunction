# 玩家 int -> CD
scoreboard players remove @a[scores={jkbm.int=1..}] jkbm.int 1
# 射线 int -> 距离
execute as @e[tag=jkbm.ray, tag=!jkbm.ray_new] at @s run function jkbm:ray/move
