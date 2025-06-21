execute unless predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{'cubi:item':{}}}}} run return run kill @s

data modify storage cubi:data args.item set from entity @s data.'cubi:item'

execute at @s positioned ~0.5 ~ ~0.5 run function cubi:item/custom_data/item/drop_item_entity with storage cubi:data args

kill @s
return 1
