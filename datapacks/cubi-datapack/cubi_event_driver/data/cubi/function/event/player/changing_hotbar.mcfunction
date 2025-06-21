title @s[tag=debug] actionbar [{"text": "changing_hotbar="},{score:{name:"@s", objective:"cubi.roller_dir"}}]

# 寄存瞬时方向
scoreboard players set #temp2 var 0
# 判定瞬时方向，1代表向右，-1代表向左
execute if score #temp var matches 1..4 run scoreboard players set #temp2 var 1
execute if score #temp var matches 5.. run scoreboard players set #temp2 var -1
execute if score #temp var matches -4..-1 run scoreboard players set #temp2 var -1
execute if score #temp var matches ..-5 run scoreboard players set #temp2 var 1
# 采样3次，存储到采样数组cubi.roller_dir[3]
execute if score #cubi.coller_dir_array_idx var matches 0 run scoreboard players operation @s cubi.roller_dir.0 = #temp2 var
execute if score #cubi.coller_dir_array_idx var matches 1 run scoreboard players operation @s cubi.roller_dir.1 = #temp2 var
execute if score #cubi.coller_dir_array_idx var matches 2 run scoreboard players operation @s cubi.roller_dir.2 = #temp2 var
# 计算采样平均值（中值滤波）
scoreboard players operation #temp var = @s cubi.roller_dir.0
scoreboard players operation #temp var += @s cubi.roller_dir.1
scoreboard players operation #temp var += @s cubi.roller_dir.2
scoreboard players operation #temp var /= #3 var
# 输出结果
scoreboard players operation @s cubi.roller_dir = #temp2 var
scoreboard players operation @s cubi.roller_dir += #temp var
# execute if score @s cubi.roller_dir matches 1.. run say r
# execute if score @s cubi.roller_dir matches ..-1 run say l
# 处理采样数组
scoreboard players add #cubi.coller_dir_array_idx var 1
execute if score #cubi.coller_dir_array_idx var matches 3.. run scoreboard players set #cubi.coller_dir_array_idx var 0

# 触发事件 - 开始

# 触发事件 - 结束