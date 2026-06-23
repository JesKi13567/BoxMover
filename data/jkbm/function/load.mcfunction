scoreboard objectives add jkbm.int dummy "记分板"
execute if score #loaded jkbm.int matches 1 run tellraw @a ["", {"text": "[", "color": "gold"}, {"storage": "jk:bm", "nbt": "txt.jkbm", "color": "gold"}, {"text": "]", "color": "gold"}, "\n", {"translate": "item.minecraft.iron_ingot"}, "+", {"translate": "item.minecraft.gold_ingot"}, "+", {"translate": "item.minecraft.diamond"}, " =[", {"translate": "block.minecraft.crafting_table"}, "]= ", {"storage": "jk:bm", "nbt": "txt.jkbm", "color": "yellow"}, " (", {"translate": "item.minecraft.paper"}, ")"]
execute if score #loaded jkbm.int matches 1 run function jkbm:lang/0
execute unless score #loaded jkbm.int matches 1 run function jkbm:lang/zh_cn
