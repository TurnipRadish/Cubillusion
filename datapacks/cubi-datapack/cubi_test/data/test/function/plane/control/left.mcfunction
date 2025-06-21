scoreboard players remove @s[scores={plane_rotation=-179..}] plane_rotation 2
execute if score @s plane_rotation matches ..-180 run scoreboard players set @s plane_rotation 180
# execute if score @n[type=item_display,distance=..1] plane_rotation matches ..-1 at @s run rotate @s ~-1 ~
