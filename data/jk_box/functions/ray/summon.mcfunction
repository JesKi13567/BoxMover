# 重置cd & 生成射线
# reset cooldown & summon the ray
scoreboard players operation @s jk_box.int = #your_cd jk_box.int
execute unless score #version jk_box.int matches 170.. anchored eyes run summon armor_stand ^ ^ ^ {Marker: true, Invisible: true, Small: true, Tags: ["jk_box.ray", "jk_box.ray_new"]}
execute if score #version jk_box.int matches 170.. anchored eyes run function jk_box:ray/summon170
scoreboard players set @e[tag=jk_box.ray_new] jk_box.int 24
data modify entity @e[limit=1,sort=nearest,tag=jk_box.ray_new] Rotation set from entity @s Rotation
tag @e[tag=jk_box.ray_new] remove jk_box.ray_new