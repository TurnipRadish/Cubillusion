


# tellraw @a {score:{name:"@s", objective:"plane_vy"}}
scoreboard players remove @s[scores={plane_v=1..}] plane_v 1
scoreboard players remove @s[scores={plane_vy=10..}] plane_vy 10
# scoreboard players remove @s[scores={plane_ry=3..}] plane_ry 3
# scoreboard players remove @s[scores={plane_vy=1..}] plane_vy 1
# scoreboard players set #plane_vy_base_delta var 5
# execute if score @s plane_vy matches -1000.. run scoreboard players operation @s plane_vy -= #plane_vy_base_delta var

# data modify storage cubi:data args.temp.x set value 0f
# # execute if score @s plane_vy matches 1.. store result storage cubi:data args.temp.y float 0.001 run scoreboard players get @s plane_vy
# execute store result storage cubi:data args.temp.z float 0.001 run scoreboard players get @s plane_v
# execute at @s run function cubi:direction/get_var with storage cubi:data args.temp

## 显示
title @p[distance=..3] actionbar [{text:"IAS="},{score:{name:"@s", objective:"plane_v"}}, {text:"VY="},{score:{name:"@s", objective:"plane_vy"}}]

## 飞行控制
data modify storage cubi:data args.temp.x set value 0f
data modify storage cubi:data args.temp.y set value 0f
execute store result storage cubi:data args.temp.z float 0.001 run scoreboard players get @s plane_v

execute at @s run function cubi:direction/get_var with storage cubi:data args.temp

execute store result score @s plane_vx run data get storage cubi:data output.vec3[0] 1000
execute store result score @s plane_vz run data get storage cubi:data output.vec3[2] 1000

## 处理平飞
execute if score @s plane_vy matches ..10 run data modify entity @s Motion[1] set value -0.1d
execute if score @s plane_v > #plane_v_takeoff var if score @s plane_vy matches 10.. run execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s plane_vy
# execute if score @s plane_v < #plane_v_takeoff var run data modify entity @s NoGravity set value false

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s plane_vx
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s plane_vz

execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s plane_rotation
execute on passengers as @s[type=interaction] on passengers as @s[type=item_display] run function test:plane/animation/tick
# execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s plane_rotation
