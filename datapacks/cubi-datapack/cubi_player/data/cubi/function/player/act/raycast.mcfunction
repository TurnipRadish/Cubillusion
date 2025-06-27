execute at @s anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{entities:true, on_targeted_entity:"effect give @s minecraft:glowing 1 0 true"}}

# data modify storage cubi:data args.x set from storage bs:out raycast.hit_point[0]
# data modify storage cubi:data args.y set from storage bs:out raycast.hit_point[1]
# data modify storage cubi:data args.z set from storage bs:out raycast.hit_point[2]
# function cubi:macro/particle with storage cubi:data args

