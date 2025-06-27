tag @s add dc_zoom_pivot
scoreboard players operation $tempid dc_temp = @s dc_uid
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = $tempid dc_temp run tag @s add dc_zoom_display
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_zoom_interaction

data modify storage dc:temp prop.modsize set from entity @s data.prop.modsize
data modify storage dc:temp prop.interactsize set from entity @s data.prop.interactsize

$execute store result storage dc:temp prop.modsize[0] float $(scale) run data get storage dc:temp prop.modsize[0] 100000
$execute store result storage dc:temp prop.modsize[1] float $(scale) run data get storage dc:temp prop.modsize[1] 100000
$execute store result storage dc:temp prop.modsize[2] float $(scale) run data get storage dc:temp prop.modsize[2] 100000
$execute store result storage dc:temp prop.interactsize.width float $(scale) run data get storage dc:temp prop.interactsize.width 100000
$execute store result storage dc:temp prop.interactsize.height float $(scale) run data get storage dc:temp prop.interactsize.height 100000

execute as @e[distance=..5,tag=dc_zoom_display] store result entity @s transformation.scale[0] float 0.00001 run data get storage dc:temp prop.modsize[0]
execute as @e[distance=..5,tag=dc_zoom_display] store result entity @s transformation.scale[1] float 0.00001 run data get storage dc:temp prop.modsize[1]
execute as @e[distance=..5,tag=dc_zoom_display] store result entity @s transformation.scale[2] float 0.00001 run data get storage dc:temp prop.modsize[2]

execute as @e[distance=..5,tag=dc_zoom_display] run data modify entity @s Pos set from entity @e[distance=..5,limit=1,tag=dc_zoom_pivot] Pos
execute as @e[distance=..5,tag=dc_zoom_display] at @s run function dc:construct/display_offset


execute as @e[distance=..5,tag=dc_zoom_interaction] store result entity @s width float 0.00001 run data get storage dc:temp prop.interactsize.width
execute as @e[distance=..5,tag=dc_zoom_interaction] store result entity @s height float 0.00001 run data get storage dc:temp prop.interactsize.height



tag @e[distance=..5] remove dc_zoom_pivot
tag @e[distance=..5] remove dc_zoom_display
tag @e[distance=..5] remove dc_zoom_interaction