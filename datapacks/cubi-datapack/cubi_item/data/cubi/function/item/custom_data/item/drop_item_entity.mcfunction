execute store result storage cubi:data output.vec3[0] double 0.001 run random value -100..100
execute store result storage cubi:data output.vec3[1] double 0.001 run random value 0..200
execute store result storage cubi:data output.vec3[2] double 0.001 run random value -100..100

data modify storage cubi:data args.motion set from storage cubi:data output.vec3

execute summon item run function cubi:item/custom_data/item/drop_item_entity/1 with storage cubi:data args
