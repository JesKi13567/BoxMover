data remove storage jk:bm txt
data modify storage jk:bm txt.jkbm set value "Box Mover"
data modify storage jk:bm txt.lore.pack_by_bm set value "Packed by Box Mover."
data modify storage jk:bm txt.lore.use set value "Hold the Box Mover + sneak while on the target container = pack it."
data modify storage jk:bm txt.tellraw.no_pack.lock set value "Cannot pack this container because it is locked."
data modify storage jk:bm txt.tellraw.no_pack.loot set value "Cannot pack this container because it has a loot table."

scoreboard players set #lang jkbm.int 1
function jkbm:lang/_
