scoreboard players set @s jk_box.int 10
execute anchored eyes run summon marker ^ ^ ^ {Tags:["jk_box.ray","jk_box.ray_new"]}
scoreboard players set @e[tag=jk_box.ray_new] jk_box.int 24
data modify entity @e[limit=1,sort=nearest,tag=jk_box.ray_new] Rotation set from entity @s Rotation
tag @e[tag=jk_box.ray_new] remove jk_box.ray_new