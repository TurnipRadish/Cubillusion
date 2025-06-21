function cubi:get_related_entity {name:"placer"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run say 2 

function cubi:get_related_entity {name:"body"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run kill @s

function cubi:get_related_entity {name:"plant"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run function cubi:item/custom_data/item/convert_from_src_entity

kill @s

say 3
