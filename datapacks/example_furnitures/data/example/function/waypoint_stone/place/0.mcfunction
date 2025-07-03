# this entity = player
# this position = the raycast hit point
tellraw @s[tag=debug] "init waypoint_stone"

playsound minecraft:block.packed_mud.place

function cubi:entity/display/transformation/get_default
data modify storage cubi:data args.transformation.translation[1] set value 0.5f
execute store result score #normal_x var run data get storage bs:out raycast.hit_normal[0]
execute store result score #normal_y var run data get storage bs:out raycast.hit_normal[1]
execute store result score #normal_z var run data get storage bs:out raycast.hit_normal[2]
function cubi:entity/display/get_rotation_transformation_from_normal/dirs_6

execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 rotated ~180 0 run function example:waypoint_stone/place/1 with storage cubi:data args
