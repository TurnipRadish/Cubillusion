function cubi:set_related_entity with storage cubi:data args.list[-1]
data remove storage cubi:data args.list[-1]
execute if data storage cubi:data args.list[] run function cubi:set_related_entities
