tag @s[tag=!cubi.using_item] add cubi.using_item
scoreboard players add @s cubi.player_using_item_tick 1

execute if score @s cubi.player_using_item_tick matches 1 run function cubi:event/player/using_item/start

title @s[tag=debug] actionbar "using item"

# 事件触发 - 开始

# 事件触发 - 结束

advancement revoke @s only cubi:event/player/using_item