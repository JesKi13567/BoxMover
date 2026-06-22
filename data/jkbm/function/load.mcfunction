scoreboard objectives add jkbm.int dummy "记分板"
execute if score #loaded jkbm.int matches 1 run function jkbm:recipe
execute if score #loaded jkbm.int matches 1 if score #lang jkbm.int matches 1 run tellraw @a ["Lang: ", {text: "[简体中文]", click_event: {action: "run_command", command: "/function jkbm:lang/zh_cn"}}, " ", {text: "[English]", color: "green", click_event: {action: "run_command", command: "/function jkbm:lang/en_us"}}]
execute if score #loaded jkbm.int matches 1 if score #lang jkbm.int matches 2 run tellraw @a ["Lang: ", {text: "[简体中文]", color: "green", click_event: {action: "run_command", command: "/function jkbm:lang/zh_cn"}}, " ", {text: "[English]", click_event: {action: "run_command", command: "/function jkbm:lang/en_us"}}]
execute unless score #loaded jkbm.int matches 1 run function jkbm:lang/zh_cn
