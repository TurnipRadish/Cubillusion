execute if score @s plane_ry matches ..-180000 run scoreboard players set @s plane_ry 180000

execute if score #plane_ry_delta var matches ..2000 run scoreboard players add #plane_ry_delta var 10

scoreboard players operation @s plane_ry -= #plane_ry_delta var

# scoreboard players operation @s plane_vx -= #plane_vx_delta var
