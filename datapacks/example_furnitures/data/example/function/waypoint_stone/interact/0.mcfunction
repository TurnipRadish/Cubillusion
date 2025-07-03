# this entity = interaction
scoreboard players set #flag var 0
execute on target if items entity @s weapon.* name_tag run scoreboard players set #flag var 1
execute if score #flag var matches 1 run return run function example:waypoint_stone/interact/change_name/0

data remove storage cubi:data args.dialog
data modify storage cubi:data args.dialog set value {\
  "type": "notice",\
  "title": "路标石",\
  "body": [\
    {\
      "type": "minecraft:plain_message", \
      "contents": "可传送到的路标石：", \
    },\
    {\
      "type": "minecraft:plain_message", \
      "contents": "", \
    },\
    {\
      "type": "minecraft:plain_message", \
      "contents": "", \
    },\
    {\
      "type": "minecraft:plain_message", \
      "contents": "", \
    },\
    {\
      "type": "minecraft:plain_message", \
      "contents": "", \
    },\
    {\
      "type": "minecraft:plain_message", \
      "contents": "", \
    },\
    {\
      "type": "minecraft:plain_message", \
      "contents": "", \
    }\
  ],\
  "inputs": [\
    {\
      "key": "range",\
      "type": "number_range",\
      "label": "路径点传输距离",\
      "start": 32,\
      "end": 1024,\
      "step": 16,\
      "initial": 32\
    }\
  ],\
  "action": {\
    "label": "完成",\
    "action": {\
      "type": "dynamic/run_command",\
      "template": "trigger waypoint_stone_signal set -$(range)"\
    }\
  }\
}
data modify storage cubi:data args.dialog.inputs[0].initial set from entity @s data.waypoint_stone_range

execute at @s run function example:waypoint_stone/out/info/0

data modify storage cubi:data args.dialog.body[1].contents set from storage example:out waypoint_stones[0].text
data modify storage cubi:data args.dialog.body[2].contents set from storage example:out waypoint_stones[1].text
data modify storage cubi:data args.dialog.body[3].contents set from storage example:out waypoint_stones[2].text
data modify storage cubi:data args.dialog.body[4].contents set from storage example:out waypoint_stones[3].text
data modify storage cubi:data args.dialog.body[5].contents set from storage example:out waypoint_stones[4].text
data modify storage cubi:data args.dialog.body[6].contents set from storage example:out waypoint_stones[5].text

data modify entity @s data.waypoint_stones set from storage example:out waypoint_stones

execute on target run function cubi:macro/dialog_show with storage cubi:data args

data modify entity @s data.last_interacted_entity set from entity @s interaction.player

# execute on target run function example:waypoint_stone/interact/1 with storage cubi:data args.dialog
