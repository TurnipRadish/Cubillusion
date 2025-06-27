# 事件触发 - 开始
## 玩家动作刻
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
## 输入监听
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "forward": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/forward
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "backward": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/backward
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "left": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/left
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "right": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/right
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "jump": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/up
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "sprint": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/sprint
execute if predicate {\
  "condition":"entity_properties", \
  "entity": "this",\
  "predicate":{\
    "type_specific": {\
      "type": "player",\
      "input": {\
        "sneak": true\
      }\
    }\
  }\
} \
run function cubi:event/player/input/sneak
## 测试 -飞行器
# execute as @e[tag=cubi.plane_body,distance=..64] run function test:plane/tick
# 事件触发 - 结束
