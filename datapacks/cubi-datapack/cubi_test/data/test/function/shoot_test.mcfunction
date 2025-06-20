execute anchored eyes run summon arrow ^ ^ ^1 {Tags:["test"]}

execute store result storage cubi:data args.var float 0.1 run scoreboard players get @s cubi.player_using_item_tick

function cubi:direction/get_var with storage cubi:data args
data modify entity @n[tag=test,distance=..6] Motion set from storage cubi:data output.vec3

execute store result entity @n[tag=test,distance=..6] Rotation[0] double -1 run data get entity @s Rotation[0]
execute store result entity @n[tag=test,distance=..6] Rotation[1] double -1 run data get entity @s Rotation[1]
