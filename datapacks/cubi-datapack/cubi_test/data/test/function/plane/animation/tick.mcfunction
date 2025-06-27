# execute if score @s plane_ry matches 5.. run scoreboard players remove @s plane_ry 5
# scoreboard players operation @s plane_ry = @n[distance=..1,tag=cubi.plane_body] plane_ry
# scoreboard players operation @s plane_rx = @n[distance=..1,tag=cubi.plane_body] plane_rx

# 基本角动画
data modify entity @s Rotation[0] set from entity @n[distance=..1,tag=cubi.plane_body] Rotation[0]
data modify entity @s Rotation[1] set from entity @n[distance=..1,tag=cubi.plane_body] Rotation[1]
# execute store result entity @s Rotation[0] float 1.000 run scoreboard players get @n[distance=..1,tag=cubi.plane_body] plane_rx

# 侧倾动画
## 至少飞行后才可发生rz姿态
execute if data entity @n[distance=..1,tag=cubi.plane_body] {OnGround:1b} run return fail

# rz动画控制
## 模拟惯性
execute if score @s plane_rz_balance matches 1.. run scoreboard players remove @s plane_rz_balance 1
execute if score @s plane_rz_balance matches ..-1 run scoreboard players add @s plane_rz_balance 1

## 输入的控制量
execute if score @s plane_rz_balance matches 1.. run scoreboard players add @s plane_rz 5
execute if score @s plane_rz_balance matches ..-1 run scoreboard players remove @s plane_rz 5

## 输入的自然量
execute if score @s plane_rz_balance matches 0 run execute if score @s plane_rz matches 1..400 run scoreboard players remove @s plane_rz 3
execute if score @s plane_rz_balance matches 0 run execute if score @s plane_rz matches -400..-1 run scoreboard players add @s plane_rz 3
execute if score @s plane_rz_balance matches 0 run execute if score @s plane_rz matches 401.. run scoreboard players add @s plane_rz 3
execute if score @s plane_rz_balance matches 0 run execute if score @s plane_rz matches ..-401 run scoreboard players remove @s plane_rz 3

## 范围限制
execute if score @s plane_rz matches 800.. run scoreboard players set @s plane_rz 0
execute if score @s plane_rz matches ..-800 run scoreboard players set @s plane_rz 0

## 应用侧倾动画
execute if score @s plane_rz matches 1.. store result storage cubi:data args.temp.frame int 1 run scoreboard players get @s plane_rz
execute if score @s plane_rz matches 1.. run function animated_java:blueprint/animations/left_lean/apply_frame with storage cubi:data args.temp
execute if score @s plane_rz matches ..-1 store result storage cubi:data args.temp.frame int -1 run scoreboard players get @s plane_rz
execute if score @s plane_rz matches ..-1 run function animated_java:blueprint/animations/right_lean/apply_frame with storage cubi:data args.temp


