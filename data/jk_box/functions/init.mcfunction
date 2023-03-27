scoreboard objectives add jk_box.use used:warped_fungus_on_a_stick "右键检测"
scoreboard objectives add jk_box.sneak custom:sneak_time "潜行检测"
scoreboard objectives add jk_box.int dummy "整型数字"
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"成功安装搬箱器数据包！\n潜行+右键诡异菌钓竿生成最长达 5 格的射线，\n碰到第一个容器即打包掉落。","color":"green"},{"text":"\n容器包含箱子，陷阱箱和木桶。","color":"light_purple"},{"text":"\n[搬箱射线可视开关]","color":"yellow","clickEvent":{"action":"run_command","value":"/function jk_box:particle"}},{"text":"  [关于作者]","color":"blue","clickEvent":{"action":"run_command","value":"/function jk_box:author"}}]