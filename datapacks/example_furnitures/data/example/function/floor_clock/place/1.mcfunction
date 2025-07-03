$summon item_display ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.floor_clock", "init", "cubi.entity.root"],\
  "item": $(item),\
  "view_range": 0\
}

data modify storage aj:temp args.animation set value {}

data modify storage aj:temp args.animation set value "update"
data modify storage aj:temp args.start_animation set value true

function animated_java:example_floor_clock/summon with storage aj:temp {}

summon interaction ~ ~ ~ {\
  "Tags": ["cubi.entity", "example.floor_clock"],\
  "data": {\
    "cubi:event_trigger": {\
      "cubi:player_interacted_with_interaction": {\
        "enable": true,\ 
        "function": "example:floor_clock/interact/0" \
      },\
      "cubi:player_hurt_entity": {\
        "enable":true,\
        "function": "example:floor_clock/destory/0" \
      }\
    }\
  },\
  "height": 2.0\
}

ride @n[type=item_display,distance=..1,tag=aj.example_floor_clock.root] mount @n[tag=init, tag=cubi.entity.root, distance=..0.1]

ride @n[tag=example.floor_clock, type=interaction, distance=..1] mount @n[tag=init, tag=cubi.entity.root, distance=..0.1]

tag @n[tag=init, tag=cubi.entity.root, distance=..0.1] remove init
