scoreboard players add #particle jk_box.int 1
execute if score #particle jk_box.int matches 2.. run scoreboard players reset #particle jk_box.int
function jk_box:init
execute unless score #particle jk_box.int matches 1 run tellraw @a {"text":"搬箱射线已开启","color":"green"}
execute if score #particle jk_box.int matches 1 run tellraw @a {"text":"搬箱射线已关闭","color":"red"}
playsound block.note_block.bell player @s