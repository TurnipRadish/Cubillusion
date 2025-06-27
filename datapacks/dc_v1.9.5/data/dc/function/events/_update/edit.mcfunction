tag @s add dc_edit_pivot
scoreboard players operation $tempid dc_temp = @s dc_uid
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = $tempid dc_temp run tag @s add dc_edit_display
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_edit_interaction
#更新数据
execute if data storage dc events.update.loot_table run data modify storage dc:temp construct.loot_table set from storage dc events.update.loot_table
execute if data storage dc events.update.loot_table as @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] run function dc:construct/loot_table with storage dc:temp construct
execute if data storage dc events.update.item run data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] item merge from storage dc events.update.item
execute unless data storage dc events.update.item as @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] run function dc:construct/loot_table with storage dc events.update
data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] item_display set from storage dc events.update.display
data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] transformation.scale set from storage dc events.update.modsize
execute as @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] run tp @s @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot]
execute as @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] at @s run function dc:construct/display_offset
data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_edit_display] Rotation set from entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.Rotation

data modify entity @e[limit=1,sort=nearest,type=interaction,tag=dc_edit_interaction] height set from storage dc events.update.interactsize.height
data modify entity @e[limit=1,sort=nearest,type=interaction,tag=dc_edit_interaction] width set from storage dc events.update.interactsize.width

data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.events set from storage dc events.update.events
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.item set from storage dc events.update.item
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.loot_table set from storage dc events.update.loot_table

data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.prop.modsize set from storage dc events.update.modsize
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.prop.interactsize set from storage dc events.update.interactsize
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_edit_pivot] data.prop merge from storage dc events.update.prop


#缩放
function dc:events/_general/zoom

#高度适应
execute if data entity @s {data:{prop:{height_adaption:1b}}} run function dc:events/_general/adaption

tag @e remove dc_edit_pivot
tag @e remove dc_edit_display
tag @e remove dc_edit_interaction
