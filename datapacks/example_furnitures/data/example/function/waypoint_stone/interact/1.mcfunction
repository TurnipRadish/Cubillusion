$dialog show @s {\
  "type": "notice",\
  "title": "路标石",\
  "body": $(body),\
  "inputs": [\
    {\
      "key": "x",\
      "type": "number_range",\
      "step": 1,\
      "start": -32,\
      "end": 32,\
      "label": "输入坐标"\
    }\
  ]\
}

$scoreboard players set @s waypoint_stone_x $(x)
$scoreboard players set @s waypoint_stone_y $(y)
$scoreboard players set @s waypoint_stone_z $(z)
