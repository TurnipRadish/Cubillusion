execute if score #normal_y var matches 1 run return run function cubi:entity/display/get_rotation_transformation/default
execute if score #normal_y var matches -1 run function cubi:entity/display/get_rotation_transformation/rx_flip
execute if score #normal_z var matches 1 run function cubi:entity/display/get_rotation_transformation/rx_toward_down
execute if score #normal_z var matches -1 run function cubi:entity/display/get_rotation_transformation/rx_toward_up
execute if score #normal_x var matches 1 run function cubi:entity/display/get_rotation_transformation/rz_toward_down
execute if score #normal_x var matches -1 run function cubi:entity/display/get_rotation_transformation/rz_toward_up
