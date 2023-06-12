scoreboard players add #particle jk_box.int 1
execute if score #particle jk_box.int matches 2.. run scoreboard players reset #particle jk_box.int
function jk_box:init
execute unless score #lang jk_box.int matches 1 unless score #particle jk_box.int matches 1 run tellraw @a {"text":"搬箱射线已开启","color":"green"}
execute unless score #lang jk_box.int matches 1 if score #particle jk_box.int matches 1 run tellraw @a {"text":"搬箱射线已关闭","color":"red"}
execute if score #lang jk_box.int matches 1 unless score #particle jk_box.int matches 1 run tellraw @a {"text":"BoxMover-ray is on","color":"green"}
execute if score #lang jk_box.int matches 1 if score #particle jk_box.int matches 1 run tellraw @a {"text":"BoxMover-ray is off","color":"red"}
playsound block.note_block.bell player @s