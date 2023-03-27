scoreboard players remove @s jk_box.int 1
kill @s[scores={jk_box.int=..0}]
tp @s ^ ^ ^0.2
execute unless score #particle jk_box.int matches 1 run particle dust 1 1 1 0.4
execute if block ~ ~ ~ #jk_box:boxes run function jk_box:ray/hit_box