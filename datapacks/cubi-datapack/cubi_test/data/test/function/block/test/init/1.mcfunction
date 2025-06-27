# function animated_java:cubi/summon {args:{animation:'shake'}}
# $data modify entity @n[distance=..0.1,tag=aj.cubi.root] item set value $(item)
# $data modify entity @n[distance=..0.1,tag=aj.cubi.root] Rotation set value $(rotation)
# tag @n[distance=..0.1,tag=aj.cubi.root] add cubi.wooden_seat

$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.wooden_seat"],\
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
  "Tags": ["cubi.entity", "cubi.wooden_seat"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_hurt_entity": {\
        "enable": true,\
        "function":"test:block/test/destory/0"\
      },\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\
        "function": "test:block/test/interact/0"\
      }\
    }\
  }\
}

execute as @n[type=item_display,distance=..0.1] run ride @s mount @n[tag=cubi.wooden_seat, type=interaction, distance=..0.1]
