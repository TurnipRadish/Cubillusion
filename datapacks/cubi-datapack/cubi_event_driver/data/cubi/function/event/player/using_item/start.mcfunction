tellraw @s[tag=debug] "start using item"

# 事件触发 - 开始
# function cubi:event/item/event_trigger/activate {id:'cubi:using_item_start'}

execute if items entity @s weapon.mainhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:using_item_start': {\
      enable: true\
    }\
  }\
}] run return run function cubi:event/item/event_trigger/activate_mainhand {id:'cubi:using_item_start'}

execute if items entity @s weapon.offhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:using_item_start': {\
      enable: true\
    }\
  }\
}] run return run function cubi:event/item/event_trigger/activate_offhand {id:'cubi:using_item_start'}


# 事件触发 - 结束
