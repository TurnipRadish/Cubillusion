execute if items entity @s weapon.* *[custom_data~{id:"ftsegrv:crystal_stick"}] anchored eyes at @s run function fts_engrave:item/crystal_stick/using/stop

scoreboard players reset @s item_using_time
tag @s remove ftsegrv_using_item
