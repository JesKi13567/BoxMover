# tick
# 作为玩家身上的int为冷却
# 作为射线上的int为限制距离
# int on players: cooldown
# int on ray: distance
execute as @a unless score @s jk_box.int matches 1.. run scoreboard players set @s jk_box.int 0
scoreboard players remove @a[scores={jk_box.int=1..}] jk_box.int 1
execute as @a[nbt={SelectedItem:{tag:{jkbm:1}}},scores={jk_box.sneak=1..}] at @s run function jk_box:check_cd
execute as @e[tag=jk_box.ray,tag=!jk_box.ray_new] at @s run function jk_box:ray/move
# 重置分数
scoreboard players reset @a jk_box.sneak
# 配方
function jk_box:craft/drop