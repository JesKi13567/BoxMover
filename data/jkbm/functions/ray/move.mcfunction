# 往前移动
scoreboard players remove @s jkbm.int 1
kill @s[scores={jkbm.int=..0}]
tp @s ^ ^ ^0.2
particle happy_villager ~ ~ ~ 0 0 0 0.0001 1
# 找到容器
execute if block ~ ~ ~ #jkbm:container run function jkbm:ray/found
# 不让穿过非容器方块
execute unless block ~ ~ ~ #replaceable run kill @s
