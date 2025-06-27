# scoreboard players operation @s plane_rx += #plane_rx_delta var
execute if score @s plane_vy < #plane_vy_min var run return fail

execute store result score #temp var run data get entity @p[distance=..1] Rotation[1] 1000
execute store result score #temp1 var run data get entity @s Rotation[1] 1000
scoreboard players operation #temp var -= #temp1 var
scoreboard players operation #temp var /= #1000 var
scoreboard players operation #temp var /= #10 var

title @a title {score:{name:"#temp", objective:"var"}}

execute if score #plane_vy_delta var matches ..10 run scoreboard players operation #plane_vy_delta var = #temp var

scoreboard players operation @s plane_vy -= #plane_vy_delta var
