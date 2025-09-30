# 玩家右键使用中
advancement revoke @s only jkbm:using
# 没有冷却
execute unless score @s jkbm.int matches 1.. run function jkbm:ray/summon
# 有冷却
title @s[scores={jkbm.int=1..}] actionbar [{"text": "", "color": "green"}, {"text": "[JKBM]", "color": "gold"}, " CD: ", {"score": {"name": "@s", "objective": "jkbm.int"}, "color": "yellow"}, "t"]
