scoreboard objectives add plane_rotation_timer dummy
scoreboard objectives add plane_rotation dummy
scoreboard objectives add plane_v dummy
scoreboard objectives add plane_vy dummy

scoreboard players set #plane_rotation_timer_min var -1
scoreboard players set #plane_rotation_timer_max var 1
scoreboard players set #plane_v_max var 1000
scoreboard players set #plane_v_takeoff var 600
scoreboard players set #plane_vy_max var 500

scoreboard players add @s plane_rotation_timer 0
scoreboard players add @s plane_rotation 0
scoreboard players add @s plane_v 0
scoreboard players add @s plane_vy 0
# scoreboard players add @s plane_rotation_timer 1

# execute if score @s plane_rotation_timer matches 20.. run data modify entity @s Rotation[0] set from entity @p[distance=..1] Rotation[0]
# execute if score @s plane_rotation_timer matches 20.. run scoreboard players set @s plane_rotation_timer 0

