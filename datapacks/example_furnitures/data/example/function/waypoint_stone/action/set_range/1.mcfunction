data modify entity @n[x=0,y=0,z=0,type=item,tag=cubi.item_handler] Thrower set from entity @s data.last_interacted_entity

execute as @n[x=0,y=0,z=0,type=item,tag=cubi.item_handler] on origin if score @s waypoint_stone_signal matches ..-1 store result storage cubi:data args.temp float -1 run scoreboard players get @s waypoint_stone_signal

data modify entity @s data.waypoint_stone_range set from storage cubi:data args.temp

