scoreboard players enable @s waypoint_stone_signal

execute if score @s waypoint_stone_signal matches 1.. run function example:waypoint_stone/action/tp_player

execute if score @s waypoint_stone_signal matches ..-1 run function example:waypoint_stone/action/set_range
