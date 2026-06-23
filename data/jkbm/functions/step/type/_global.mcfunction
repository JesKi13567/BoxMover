data remove storage jk:bm box.x
function jkbm:step/2 {n: 0}
function jkbm:step/2 {n: 1}
function jkbm:step/2 {n: 2}
function jkbm:step/2 {n: 3}
function jkbm:step/2 {n: 4}
function jkbm:step/2 {n: 5}
function jkbm:step/2 {n: 6}
function jkbm:step/2 {n: 7}
function jkbm:step/2 {n: 8}
function jkbm:step/2 {n: 9}
function jkbm:step/2 {n: 10}
function jkbm:step/2 {n: 11}
function jkbm:step/2 {n: 12}
function jkbm:step/2 {n: 13}
function jkbm:step/2 {n: 14}
function jkbm:step/2 {n: 15}
function jkbm:step/2 {n: 16}
function jkbm:step/2 {n: 17}
function jkbm:step/2 {n: 18}
function jkbm:step/2 {n: 19}
function jkbm:step/2 {n: 20}
function jkbm:step/2 {n: 21}
function jkbm:step/2 {n: 22}
function jkbm:step/2 {n: 23}
function jkbm:step/2 {n: 24}
function jkbm:step/2 {n: 25}
function jkbm:step/2 {n: 26}

data modify entity @s Item.id set from block ~ ~ ~ id
data modify entity @s Item.components."minecraft:container" set from storage jk:bm box.x

execute if block ~ ~ ~ #jkbm:furnace run function jkbm:step/type/furnace
execute if block ~ ~ ~ brewing_stand run function jkbm:step/type/brewing_stand
