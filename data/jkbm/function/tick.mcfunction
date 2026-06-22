# 检查玩家
execute as @a[gamemode=!spectator] if items entity @s weapon.* paper[custom_data={jkbm: ["this"]}] if predicate jkbm:is_sneaking at @s positioned ~ ~-.01 ~ if block ~ ~ ~ #jkbm:all run function jkbm:step/0
