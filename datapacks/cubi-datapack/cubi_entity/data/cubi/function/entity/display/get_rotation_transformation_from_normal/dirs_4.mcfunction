execute if score #normal_z var matches 1 run return run function cubi:entity/display/get_rotation_transformation/default
execute if score #normal_z var matches -1 run function cubi:entity/display/get_rotation_transformation/ry_flip
execute if score #normal_x var matches 1 run function cubi:entity/display/get_rotation_transformation/ry_toward_left
execute if score #normal_x var matches -1 run function cubi:entity/display/get_rotation_transformation/ry_toward_right
