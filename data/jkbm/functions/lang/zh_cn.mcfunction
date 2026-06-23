data remove storage jk:bm txt
data modify storage jk:bm txt.jkbm set value "搬箱器"
data modify storage jk:bm txt.lore.pack_by_bm set value "由搬箱器打包。"
data modify storage jk:bm txt.lore.use set value "手持搬箱器 + 潜行在目标容器上 = 打包。"
data modify storage jk:bm txt.tellraw.no_pack.lock set value "此容器有锁，无法打包！"
data modify storage jk:bm txt.tellraw.no_pack.loot set value "此容器有战利品表，无法打包！"

scoreboard players set #lang jkbm.int 2
function jkbm:lang/_
