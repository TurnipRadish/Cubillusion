$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.amethyst_light"],\
  "item": $(item),\
  "transformation": {\
    translation:[0f,0.5f,0f],\
    left_rotation:$(rotation),\
    scale:[1f,1f,1f],\
    right_rotation:[0f,0f,0f,1f]\
  }\
}

summon interaction ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.amethyst_light"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:amethyst_light/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:amethyst_light/destory/0" \
      }\
    }\
  }\
}

execute as @n[type=item_display,distance=..0.1] run ride @s mount @n[tag=example.amethyst_light, type=interaction, distance=..0.1]
