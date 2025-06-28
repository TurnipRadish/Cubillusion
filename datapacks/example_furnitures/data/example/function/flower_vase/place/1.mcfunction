$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.flower_vase"],\
  "item": $(item),\
  "Rotation": $(rotation),\
  "transformation": [\
    1f, 0f, 0f, 0f,\
    0f, 1f, 0f, 0.5f,\
    0f, 0f, 1f, 0f,\
    0f, 0f, 0f, 1f\
  ]\
}

summon interaction ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.flower_vase"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:flower_vase/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:flower_vase/destory/0" \
      }\
    }\
  }\
}

execute as @n[type=item_display,distance=..0.1] run ride @s mount @n[tag=example.flower_vase, type=interaction, distance=..0.1]
