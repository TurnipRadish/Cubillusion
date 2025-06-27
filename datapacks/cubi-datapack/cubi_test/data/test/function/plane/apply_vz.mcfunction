data modify storage cubi:data args.temp.x set value 0.0
data modify storage cubi:data args.temp.y set value 0.0
execute store result storage cubi:data args.temp.z double 0.001 run scoreboard players get @s plane_v

execute at @s run function cubi:direction/get_var with storage cubi:data args.temp

execute store result score #plane_motion_x var run data get storage cubi:data output.vec3[0] 1000
execute store result score #plane_motion_y var run data get storage cubi:data output.vec3[1] 1000
execute store result score #plane_motion_z var run data get storage cubi:data output.vec3[2] 1000

# data modify entity @s Motion set from storage cubi:data output.vec3
