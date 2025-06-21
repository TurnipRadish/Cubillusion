# execute at @s run function cubi:direction/get_inverse

# data modify storage cubi:data oper.a set from storage cubi:data output.vec3
# data modify storage cubi:data oper.b set from entity @s Motion

# function cubi:motion/add2

# data modify entity @s Motion set from storage cubi:data output.vec3

execute if score @s plane_v matches 5.. run scoreboard players remove @s plane_v 5
