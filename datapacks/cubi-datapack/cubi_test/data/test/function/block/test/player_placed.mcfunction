execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{}}

data modify storage cubi:data args.x set from storage bs:out raycast.hit_point[0]
data modify storage cubi:data args.y set from storage bs:out raycast.hit_point[1]
data modify storage cubi:data args.z set from storage bs:out raycast.hit_point[2]

execute if entity @s[gamemode=!creative] run clear @s *[custom_data~{id:"cubi:test"}] 1

function test:block/test/init/0 with storage cubi:data args
