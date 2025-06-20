# execute as @e[distance=..16] if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"ftsegrv:ray"}}}} run function fts_engrave:item/crystal_stick/init/2

# scoreboard players operation #temp var = @s item_using_time
# execute store result storage ftsegrv:data args.count int 0.01 run scoreboard players get #temp var
# execute store result storage ftsegrv:data args.distance float 0.1 run scoreboard players get #temp var
# execute at @s run function fts_engrave:item/crystal_stick/init/3 with storage ftsegrv:data args

# execute if score @s item_using_time matches 5 run function fts_engrave:item/crystal_stick/init/5

execute if score @s item_using_time matches 50 run function fts_engrave:item/crystal_stick/using/charged

