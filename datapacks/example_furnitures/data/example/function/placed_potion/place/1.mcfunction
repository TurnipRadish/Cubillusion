$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.placed_potion"],\
  "item": $(item),\
  "Rotation": $(rotation),\
  "transformation": [\
    1f, 0f, 0f, 0f,\
    0f, 1f, 0f, 0f,\
    0f, 0f, 1f, 0f,\
    0f, 0f, 0f, 1f\
  ]\
}

summon interaction ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.placed_potion"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:placed_potion/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:placed_potion/destory/0" \
      }\
    }\
  },\
  "width": 0.5,\
  "height": 0.5\
}

execute as @n[type=item_display,distance=..0.1] run ride @s mount @n[tag=example.placed_potion, type=interaction, distance=..0.1]
