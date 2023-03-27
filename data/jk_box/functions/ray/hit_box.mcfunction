scoreboard players set @s jk_box.int 0
summon item ~ ~ ~ {Item:{Count:1b,id:"white_wool"},PickupDelay:1000,Tags:["jk_box.drop_before"]}
execute as @e[limit=1,sort=nearest,tag=jk_box.drop_before] at @s run function jk_box:ray/store_box