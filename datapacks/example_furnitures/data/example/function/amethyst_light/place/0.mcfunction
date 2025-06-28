# this entity = player
# this position = the raycast hit point
tellraw @s[tag=debug] "init amethyst_light"

playsound minecraft:block.packed_mud.place


execute store result score #normal_x var run data get storage bs:out raycast.hit_normal[0]
execute store result score #normal_y var run data get storage bs:out raycast.hit_normal[1]
execute store result score #normal_z var run data get storage bs:out raycast.hit_normal[2]
function cubi:entity/display/get_block_facing_rotation


execute align xyz positioned ~0.5 ~ ~0.5 run function example:amethyst_light/place/1 with storage cubi:data args
