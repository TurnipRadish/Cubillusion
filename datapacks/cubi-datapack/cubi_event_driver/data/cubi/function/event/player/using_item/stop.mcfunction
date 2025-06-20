title @s[tag=debug] actionbar "stop using item"

# 事件触发 - 开始
execute if items entity @s weapon.mainhand *[custom_data~{'cubi:event':{'cubi:stop_using_item':{listening: true}}}] run function cubi:event/run_function_with_weapon {event_type:'cubi:stop_using_item'}

# 事件触发 - 结束

tag @s remove cubi.using_item
scoreboard players reset @s cubi.player_using_item_tick 