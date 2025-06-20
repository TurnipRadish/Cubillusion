function cubi:get_related_entity {name:"placer"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run say 2 

function cubi:get_related_entity {name:"body"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run kill @s

function cubi:get_related_entity {name:"plant"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run kill @s

kill @s

say 3
