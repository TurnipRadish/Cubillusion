execute if score @s waypoint_stone_signal matches 1 run data modify storage cubi:data args.position set from entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stones[0].position
execute if score @s waypoint_stone_signal matches 2 run data modify storage cubi:data args.position set from entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stones[1].position
execute if score @s waypoint_stone_signal matches 3 run data modify storage cubi:data args.position set from entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stones[2].position
execute if score @s waypoint_stone_signal matches 4 run data modify storage cubi:data args.position set from entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stones[3].position
execute if score @s waypoint_stone_signal matches 5 run data modify storage cubi:data args.position set from entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stones[4].position
execute if score @s waypoint_stone_signal matches 6 run data modify storage cubi:data args.position set from entity @n[distance=..16,tag=example.waypoint_stone,type=interaction] data.waypoint_stones[5].position

execute store result storage cubi:data args.x int 1 run data get storage cubi:data args.position[0]
execute store result storage cubi:data args.y int 1 run data get storage cubi:data args.position[1]
execute store result storage cubi:data args.z int 1 run data get storage cubi:data args.position[2]

function cubi:macro/tp with storage cubi:data args

scoreboard players reset @s waypoint_stone_signal

title @s actionbar "已传送到目的地"
