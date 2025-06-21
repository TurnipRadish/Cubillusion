# execute at @s run function cubi:direction/get_var {x:0, y:0.1, z:0.1}

# data modify storage cubi:data oper.a set from storage cubi:data output.vec3
# data modify storage cubi:data oper.b set from entity @s Motion

# function cubi:motion/add2

# data modify entity @s Motion set from storage cubi:data output.vec3

# data modify entity @s Rotation[0] set from entity @p[distance=..1] Rotation[0]
scoreboard objectives add plane_vx dummy
scoreboard objectives add plane_vz dummy

scoreboard players add @s plane_rotation_timer 0
scoreboard players add @s plane_rotation 0
scoreboard players add @s plane_v 0
scoreboard players add @s plane_vy 0
scoreboard players add @s plane_vx 0
scoreboard players add @s plane_vz 0

scoreboard objectives add cubi.vx dummy
scoreboard objectives add cubi.vy dummy
scoreboard objectives add cubi.vz dummy

execute if score @s plane_v matches ..5000 run scoreboard players add @s plane_v 5




# execute at @s run summon slime ^ ^ ^-0.1
# execute at @s run summon slime ^ ^ ^-0.1
# execute at @s run summon slime ^ ^ ^-0.1
# execute at @s run summon slime ^ ^ ^-0.1
# execute at @s run summon slime ^ ^ ^-0.1

# execute unless entity @s[tag=init] store result score @s plane_vx run data get entity @s Motion[0] 1000
# # # execute store result score @s plane_vy run data get entity @s Motion[1] 1000
# execute unless entity @s[tag=init] store result score @s plane_vz run data get entity @s Motion[2] 1000

# tag @s add init

# # execute if score #plane_flag var matches 1 run return run scoreboard players set #plane_flag var 0
# # scoreboard players set #plane_flag var 1

# scoreboard players set #const var 10
# scoreboard players operation @s cubi.vx /= #const var
# scoreboard players operation @s plane_vx += @s cubi.vx
# tellraw @a {score:{name:"@s", objective:"plane_vx"}}
# scoreboard players operation @s cubi.vz /= #const var
# scoreboard players operation @s plane_vz += @s cubi.vz

# execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s plane_vx
# # execute if score @s plane_vy matches -2147483648.. store result entity @s Motion[1] double 0.001 run scoreboard players get @s plane_vy
# execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s plane_vz

# kill @e[type=slime,distance=..3]
# execute if score @s plane_v < #plane_v_max var run scoreboard players add @s plane_v 2

# # scoreboard players add @s plane_vy 10
# execute if score @s plane_vy < #plane_vy_max var if score @s plane_v > #plane_v_takeoff var run scoreboard players add @s plane_vy 2
