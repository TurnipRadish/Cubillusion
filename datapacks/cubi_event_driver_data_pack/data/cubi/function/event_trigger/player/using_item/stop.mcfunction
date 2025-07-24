title @s[tag=debug] actionbar "stop using item"

# 事件触发 - 开始
# function cubi:event/item/event_trigger/activate {id:'cubi:using_item_stop'}
summon marker ~ ~ ~ {Tags:["test"]}
data modify entity @n[distance=..1,type=marker,tag=test] data set from entity @s {}

scoreboard players set @s cubi.weapon_flag 0

execute if items entity @s weapon.mainhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:using_item_stop': {\
      enable: true\
    }\
  }\
}] run scoreboard players set @s cubi.weapon_flag 1

execute if items entity @s weapon.offhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:using_item_stop': {\
      enable: true\
    }\
  }\
}] run scoreboard players set @s cubi.weapon_flag -1

function cubi:player/weapon/get_for_args_from_marker

execute unless score @s cubi.weapon_flag matches 0 run function cubi:macro/function with storage cubi:data args.item.components.'minecraft:custom_data'.'cubi:event_trigger'.'cubi:using_item_stop'

# 事件触发 - 结束

kill @n[distance=..1,type=marker,tag=test]

tag @s remove cubi.using_item
scoreboard players reset @s cubi.player_using_item_tick 