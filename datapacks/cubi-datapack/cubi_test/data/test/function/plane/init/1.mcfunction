data merge entity @s {\
  item:{\
    id:"stone",\
    components:{\
      item_model:"cubi:plane"\
    }\
  },\
  teleport_duration: 5,\
}

ride @s mount @n[distance=..0.1,type=interaction]

# rotate @s facing entity @p[distance=..8]

execute store result entity @s Rotation[0] float 1 run data get storage cubi:data args.player.Rotation[0]
