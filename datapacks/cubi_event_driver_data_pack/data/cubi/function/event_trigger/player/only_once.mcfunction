title @s[tag=debug] actionbar "only_once"

# 事件触发 - 开始
summon marker ~ ~ ~ {Tags:["test"]}
data modify entity @n[distance=..1,type=marker,tag=test] data.SelectedItem set from entity @s SelectedItem
data modify entity @n[distance=..1,type=marker,tag=test] data.equipment set from entity @s equipment

scoreboard players set @s cubi.weapon_flag 0

execute if items entity @s weapon.mainhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:only_once': {\
      enable: true\
    }\
  }\
}] run scoreboard players set @s cubi.weapon_flag 1

execute if items entity @s weapon.offhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:only_once': {\
      enable: true\
    }\
  }\
}] run scoreboard players set @s cubi.weapon_flag -1

# 获取物品
function cubi:player/weapon/get_for_args_from_marker
# data modify storage cubi:test temp1 set from storage cubi:data args.item

# 移除物品上的指定魔咒，确保该魔咒存在时只触发一次
function cubi:player/weapon/from_args_remove_specific_enchantment {id:"cubi:event_trigger/only_once"}

function cubi:player/weapon/set_components with storage cubi:data args.item

# 执行物品上的函数
function cubi:macro/function with storage cubi:data args.item.components.'minecraft:custom_data'.'cubi:event_trigger'.'cubi:only_once'

# 事件触发 - 结束

kill @n[distance=..1,type=marker,tag=test]


