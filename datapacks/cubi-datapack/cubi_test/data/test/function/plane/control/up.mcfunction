## 上升
execute if score @s plane_v > #plane_v_takeoff var run scoreboard players add @s plane_vy 15
execute if score @s plane_v > #plane_v_takeoff var run title @p[distance=..1] actionbar "上升中"

execute if score @s plane_ry matches 500.. run scoreboard players set @s plane_ry 500

# execute if score @s plane_vy matches 1.. store result entity @s Motion[1] double 0.001 run scoreboard players get @s plane_vy

