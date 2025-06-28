execute if score #normal_x var matches 1 run return run function cubi:entity/display/get_east_rotation
execute if score #normal_x var matches -1 run return run function cubi:entity/display/get_west_rotation
execute if score #normal_z var matches 1 run return run function cubi:entity/display/get_south_rotation
execute if score #normal_z var matches -1 run return run function cubi:entity/display/get_north_rotation
execute if score #normal_y var matches 1 run return run function cubi:entity/display/get_up_rotation
execute if score #normal_y var matches -1 run return run function cubi:entity/display/get_down_rotation