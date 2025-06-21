# scoreboard players remove @s plane_rotation_timer 1
# execute if score @s plane_rotation_timer <= #plane_rotation_timer_min var run scoreboard players remove @s plane_rotation 1

scoreboard players remove @s[scores={plane_rotation=-179..}] plane_rotation 2
execute if score @s plane_rotation matches ..-180 run scoreboard players set @s plane_rotation 180

# execute if score @s plane_rotation_timer matches ..-1 run scoreboard players remove @s[scores={plane_rotation=-29..}] plane_rotation 1

execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s plane_rotation

# execute if score @s plane_rotation_timer <= #plane_rotation_timer_min var run scoreboard players operation @s plane_rotation_timer = #plane_rotation_timer_min var

