scoreboard objectives add plane_rotation_timer dummy
scoreboard objectives add plane_rotation dummy
scoreboard objectives add plane_v dummy
scoreboard objectives add plane_vy dummy
scoreboard objectives add plane_vx dummy
scoreboard objectives add plane_vz dummy
scoreboard objectives add plane_rz dummy
scoreboard objectives add plane_rz_balance dummy
scoreboard objectives add plane_v_lr dummy
scoreboard objectives add plane_ry dummy
scoreboard objectives add cubi.vx dummy
scoreboard objectives add cubi.vy dummy
scoreboard objectives add cubi.vz dummy
scoreboard objectives add plane_rx dummy

scoreboard players set #plane_rotation_timer_min var -5
scoreboard players set #plane_rotation_timer_max var 5
scoreboard players set #plane_rz_balance_max var 10
scoreboard players set #plane_rz_balance_min var -10
scoreboard players set #plane_v_max var 1000
scoreboard players set #plane_v_takeoff var 600
scoreboard players set #plane_vy_max var 1000
scoreboard players set #plane_vy_min var -1000
scoreboard players set #plane_rz_max var 10
scoreboard players set #plane_rz_min var -10
scoreboard players set #plane_ry_delta var 1000
scoreboard players set #plane_vx_delta var 2
scoreboard players set #plane_gravity_vy var 5
scoreboard players set #plane_air_v var 2
scoreboard players set #plane_lift_vy var 5
scoreboard players set #plane_ground_v var 1
scoreboard players set #plane_v_delta1 var 5
scoreboard players set #plane_v_delta2 var 10
scoreboard players set #plane_vy_delta var 1
scoreboard players set #plane_rx_delta var 1000

scoreboard players add @s plane_rotation_timer 0
scoreboard players add @s plane_rotation 0
scoreboard players add @s plane_v 0
scoreboard players add @s plane_vy 0
scoreboard players add @s plane_rz 0
scoreboard players add @s plane_rz_balance 0

scoreboard players add @s plane_rotation_timer 0
scoreboard players add @s plane_rotation 0
scoreboard players add @s plane_v 0
scoreboard players add @s plane_vy 0
scoreboard players add @s plane_vx 0
scoreboard players add @s plane_vz 0


# scoreboard players add @s plane_rotation_timer 1

# execute if score @s plane_rotation_timer matches 20.. run data modify entity @s Rotation[0] set from entity @p[distance=..1] Rotation[0]
# execute if score @s plane_rotation_timer matches 20.. run scoreboard players set @s plane_rotation_timer 0

