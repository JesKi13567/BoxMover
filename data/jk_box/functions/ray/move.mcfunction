scoreboard players remove @s jk_box.int 1
kill @s[scores={jk_box.int=..0}]
tp @s ^ ^ ^0.2
execute unless score #particle jk_box.int matches 1 run particle dust 1 1 1 0.4
execute if block ~ ~ ~ #jk_box:boxes run function jk_box:ray/found
execute if score #version jk_box.int matches 200.. run function jk_box:ray/move200
execute if score #version jk_box.int matches 203.. run function jk_box:ray/move203
execute as @e[limit=1,sort=nearest,tag=jk_box.drop_before] at @s run function jk_box:ray/touched