function cubi:get_related_entity {name:"plant"}
execute as @n[x=0,y=0,z=0,tag=cubi.item_handler,distance=..1] on origin run data modify entity @s item set from storage cubi:data args.player.SelectedItem
