scoreboard players add @s plane_vx 0
scoreboard players add @s plane_vy 0
scoreboard players add @s plane_vz 0
scoreboard players add @s plane_v 0

# 自然力
## 重力
execute if score @s plane_vy > #plane_vy_min var if data entity @s {OnGround:0b} run scoreboard players operation @s plane_vy -= #plane_gravity_vy var
## 空气阻力
execute if data entity @s {OnGround:0b} if score @s plane_v matches 10.. run scoreboard players operation @s plane_v -= #plane_air_v var
execute if data entity @s {OnGround:0b} if score @s plane_v matches ..-10 run scoreboard players operation @s plane_v += #plane_air_v var
## 地面阻力
execute if score @s plane_v matches 10.. if data entity @s {OnGround:1b} run scoreboard players operation @s plane_v -= #plane_ground_v var
execute if score @s plane_vy matches ..-10 unless block ~ ~-0.5 ~ #cubi:air_like run scoreboard players set @s plane_vy -1
## 升力
execute if score @s plane_v > #plane_v_takeoff var run scoreboard players operation @s plane_vy += #plane_lift_vy var


# 应用变量到NBT
## 应用速度vx vy vz
function test:plane/apply_vz
function test:plane/apply_vx
function test:plane/apply_vy
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #plane_motion_x var
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #plane_motion_y var
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #plane_motion_z var


# 角度
## 仰角 rx = arctan(vy / v)
scoreboard players operation #temp var = @s plane_vy
scoreboard players operation #temp var *= #1000 var
scoreboard players operation #temp var /= @s plane_v
scoreboard players operation $math.atan.x bs.in = #temp var
function #bs.math:atan
scoreboard players operation @s plane_rx = $math.atan bs.out
execute if data entity @s {OnGround:1b} run scoreboard players set @s plane_rx 0

## 应用角度
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s plane_ry
execute store result entity @s Rotation[1] float -0.08 run scoreboard players get @s plane_rx

# 显示
title @p[distance=..3] actionbar [{text:"IAS="},{score:{name:"@s", objective:"plane_v"}}, {text:"VY="},{score:{name:"@s", objective:"plane_vy"}},{"text":"atan = ","color":"dark_gray"},{"score":{"name":"$math.atan.x","objective":"bs.in"},"color":"gold"}]

# 重定向到动画刻
execute on passengers as @s[type=interaction] on passengers as @s[type=item_display] run function test:plane/animation/tick

# 声音
execute store result storage cubi:data args.volume float 0.001 run scoreboard players get @s plane_v
function test:plane/sounds/engine with storage cubi:data args
execute if data entity @s {OnGround:1b} run stopsound @p[distance=..1] * cubi:plane_engine
