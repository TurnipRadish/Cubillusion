$summon item_display ~ ~0.5 ~ {\
  "Tags": ["cubi.entity", "example.note_paper", "init"],\
  "item": $(item),\
  "Rotation": $(rotation),\
  "transformation": $(transformation)\
}
# $data modify entity @n[distance=..1,type=item_frame] Item set value $(item)
# $summon item_frame ~ ~ ~ {\
#   "Tags": ["cubi.entity", "example.note_paper"],\
#   "Fixed": true,\
#   "Invisible": true,\
#   "Item": $(item)\
# }

$summon interaction ~ ~$(offset_y) ~ {\
  "Tags": ["cubi.entity", "example.note_paper"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:note_paper/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:note_paper/destory/0" \
      }\
    }\
  },\
  "width": 0.5,\
  "height": 0.5\
}

execute as @n[type=item_display,distance=..1,tag=init] run ride @s mount @n[tag=example.note_paper, type=interaction, distance=..1]

tag @n[type=item_display,distance=..1,tag=init] remove init
