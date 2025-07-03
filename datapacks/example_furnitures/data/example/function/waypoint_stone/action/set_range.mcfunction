execute store result entity @n[distance=..16,tag=example.waypoint_stone.text] attributes[{id:"waypoint_transmit_range"}].base float -1 run scoreboard players get @s waypoint_stone_signal

execute store result entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stone_range float -1 run scoreboard players get @s waypoint_stone_signal


execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{entities:true, on_targeted_entity:"function example:waypoint_stone/action/set_range/1"}}


scoreboard players reset @s waypoint_stone_signal

title @s actionbar "已设置路标石的路径点传输距离"
