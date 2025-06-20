# scoreboard players operation #temp var = @s item_using_time
# scoreboard players operation #temp var -= @s last_item_using_time
# scoreboard players operation @s last_item_using_time = @s item_using_time

# function fts_engrave:item/crystal_stick/destory/tick

# execute if entity @s[tag=ftsegrv_using_item] if score #temp var matches 0 run function fts_engrave:event/using_item_end
