$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.wooden_seat"],\
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
  "Tags": ["cubi.entity", "example.wooden_seat"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:wooden_seat/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:wooden_seat/destory/0" \
      }\
    }\
  }\
}

execute as @n[type=item_display,distance=..0.1] run ride @s mount @n[tag=example.wooden_seat, type=interaction, distance=..0.1]
