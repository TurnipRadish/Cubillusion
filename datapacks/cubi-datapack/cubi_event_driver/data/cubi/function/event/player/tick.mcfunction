# 事件触发 - 开始
function cubi:player/tick

execute if score @s cubi.player_used_carrot_on_a_stick matches 1 run function cubi:event/player/used_carrot_on_a_stick

scoreboard players operation #temp var = @s cubi.player_using_item_tick
scoreboard players operation #temp var -= @s cubi.player_using_item_last_tick
execute if entity @s[tag=cubi.using_item] if score #temp var matches 0 run function cubi:event/player/using_item/stop
scoreboard players operation @s cubi.player_using_item_last_tick = @s cubi.player_using_item_tick
# 事件触发 - 结束
