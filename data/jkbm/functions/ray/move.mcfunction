# 往前移动
scoreboard players remove @s jkbm.int 1
kill @s[scores={jkbm.int=..0}]
tp @s ^ ^ ^0.2
particle happy_villager ~ ~ ~ 0 0 0 0.0001 1
# 找到容器
execute if block ~ ~ ~ #jkbm:container if function jkbm:ray/check run function jkbm:ray/found
# 有战利品表或锁
execute if block ~ ~ ~ #jkbm:container unless function jkbm:ray/check run tellraw @a[distance=..8] [{"text": "[JKBM]", "color": "gold"}, {"text": " 此容器有战利品表或锁，无法打包！", "color": "yellow"}, "\n[JKBM]", {"text": " You cannot pack this becuz of loot table or lock.", "color": "yellow"}]
# 不让穿过非容器方块
execute unless block ~ ~ ~ #replaceable run kill @s
