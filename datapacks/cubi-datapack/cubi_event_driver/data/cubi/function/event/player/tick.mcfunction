# 事件触发 - 开始
function cubi:player/tick
## 使用胡萝卜吊杆
execute if score @s cubi.player_used_carrot_on_a_stick matches 1 run function cubi:event/player/used_carrot_on_a_stick
## 物品使用监听
scoreboard players operation #temp var = @s cubi.player_using_item_tick
scoreboard players operation #temp var -= @s cubi.player_using_item_last_tick
execute if entity @s[tag=cubi.using_item] if score #temp var matches 0 run function cubi:event/player/using_item/stop
scoreboard players operation @s cubi.player_using_item_last_tick = @s cubi.player_using_item_tick
## 快捷栏槽位监听
execute store result score @s cubi.player_selected_slot run data get entity @s SelectedItemSlot
scoreboard players operation #temp var = @s cubi.player_selected_slot
scoreboard players operation #temp var -= @s cubi.player_selected_last_slot
execute unless score #temp var matches 0 run function cubi:event/player/changing_hotbar
scoreboard players operation @s cubi.player_selected_last_slot = @s cubi.player_selected_slot
## 移动距离监听
scoreboard players operation #temp var = @s cubi.player_walk
scoreboard players operation #temp var -= @s cubi.player_walk_last
execute unless score #temp var matches 0 run function cubi:event/player/walking
scoreboard players operation @s cubi.player_walk_last = @s cubi.player_walk

scoreboard players operation #temp var = @s cubi.player_sprint
scoreboard players operation #temp var -= @s cubi.player_sprint_last
execute unless score #temp var matches 0 run function cubi:event/player/sprinting
scoreboard players operation @s cubi.player_sprint_last = @s cubi.player_sprint
# 事件触发 - 结束
