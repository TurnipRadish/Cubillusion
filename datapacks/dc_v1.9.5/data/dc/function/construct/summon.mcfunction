summon marker ~ ~ ~ {Tags:["dc_pivot","dc_pivot_temp"]}
summon item_display ~ ~ ~ {Tags:["dc_display","dc_display_temp"]}
summon interaction ~ ~ ~ {Tags:["dc_interaction","dc_interaction_temp"],response:1b,attack:{player:[I;0,0,0,0],timestamp:0L},interaction:{player:[I;0,0,0,0],timestamp:0L}}
execute as @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] at @s run function dc:events/_update/upgrade

scoreboard players operation @e[tag=dc_display_temp] dc_uid = $uid dc_uid


execute if data entity @s data.loot_table run data modify storage dc:temp construct.loot_table set from entity @s data.loot_table
execute if data entity @s data.loot_table as @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] run function dc:construct/loot_table with storage dc:temp construct
execute if data entity @s data.item run data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] item merge from entity @s data.item

data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] item_display set from entity @s data.display
data modify entity @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] transformation.scale set from entity @s data.modsize
execute as @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] at @s run function dc:construct/display_offset
execute as @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] at @s run function dc:construct/facing

scoreboard players operation @e[tag=dc_interaction_temp] dc_uid = $uid dc_uid
data modify entity @e[limit=1,sort=nearest,type=interaction,tag=dc_interaction_temp] height set from entity @s data.interactsize.height
data modify entity @e[limit=1,sort=nearest,type=interaction,tag=dc_interaction_temp] width set from entity @s data.interactsize.width
data modify entity @e[limit=1,sort=nearest,type=interaction,tag=dc_interaction_temp] Rotation set from entity @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] Rotation

scoreboard players operation @e[tag=dc_pivot_temp] dc_uid = $uid dc_uid
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.events merge from entity @s data.events
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.item set from entity @s data.item
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.loot_table set from entity @s data.loot_table
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.index set from entity @s data.index
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.Rotation set from entity @e[limit=1,sort=nearest,type=item_display,tag=dc_display_temp] Rotation
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.prop.modsize set from entity @s data.modsize
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.prop.interactsize set from entity @s data.interactsize
data modify entity @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] data.prop merge from entity @s data.prop



#prop
execute as @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] at @s store result entity @s data.prop.timestamp int 1 run time query gametime

#construct
execute as @e[limit=1,sort=nearest,type=marker,tag=dc_pivot_temp] if data entity @s data.events.construct run function lay:macro/list/init {list:"entity @s data.events.construct",func:"dc:construct/construct_event"}


tag @e remove dc_pivot_temp
tag @e remove dc_display_temp
tag @e remove dc_interaction_temp
scoreboard players add $uid dc_uid 1

