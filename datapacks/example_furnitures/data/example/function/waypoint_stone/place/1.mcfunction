$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.waypoint_stone", "init", "cubi.entity.root"],\
  "item": $(item),\
  "transformation": $(transformation),\
}

summon armor_stand ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.waypoint_stone", "example.waypoint_stone.text"],\
  "Invisible": true,\
  "Small": true,\
  "attributes": [\
    {\
      "base": 1000000,\
      "id": "waypoint_transmit_range"\
    }\
  ]\
}

summon interaction ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.waypoint_stone"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:waypoint_stone/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:waypoint_stone/destory/0" \
      }\
    }\
  },\
  "response": true,\
  "width": 1.1f,\
  "height": 1.1f\
}

ride @n[tag=example.waypoint_stone, type=interaction, distance=..1] mount @n[tag=init, tag=cubi.entity.root, distance=..0.1]

ride @n[tag=example.waypoint_stone.text, distance=..1] mount @n[tag=init, tag=cubi.entity.root, distance=..0.1]

tag @n[tag=init, tag=cubi.entity.root, distance=..0.1] remove init

execute unless score #normal_y var matches 0 run setblock ~ ~ ~ chain
execute unless score #normal_x var matches 0 run setblock ~ ~ ~ chain[axis=x]
execute unless score #normal_z var matches 0 run setblock ~ ~ ~ chain[axis=z]
