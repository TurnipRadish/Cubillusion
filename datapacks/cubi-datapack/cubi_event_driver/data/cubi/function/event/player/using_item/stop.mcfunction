title @s[tag=debug] actionbar "stop using item"

# 事件触发 - 开始
execute if items entity @s weapon.mainhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:using_item_stop': {\
      enable: true\
    }\
  }\
}] run function cubi:event/item/event_trigger/activate {id:'cubi:using_item_stop'}

# 事件触发 - 结束

tag @s remove cubi.using_item
scoreboard players reset @s cubi.player_using_item_tick 