data modify storage example:out waypoint_stones append value {\
  "text": [],\
  "position": []\
}

# 获取并构建dialog中的文本信息
## 初始化文本
$data modify storage example:out waypoint_stones[-1].text set value [\
  {\
    "text": "",\
    "hover_event": {\
      "action": "show_text",\
      "value": ["?", " ", "?", " ", "?"]\
    },\
    "click_event": {\
      "action": "run_command",\
      "command": "trigger waypoint_stone_signal set $(signal)"\
    }\
  },\
  $(text)\
]

## 悬停显示要传到到的坐标
data modify storage example:out waypoint_stones[-1].text[0].hover_event.value[0] set string entity @s Pos[0] 0 -1
data modify storage example:out waypoint_stones[-1].text[0].hover_event.value[2] set string entity @s Pos[1] 0 -1
data modify storage example:out waypoint_stones[-1].text[0].hover_event.value[4] set string entity @s Pos[2] 0 -1

## 输出自身的坐标
data modify storage example:out waypoint_stones[-1].position set from entity @s Pos
