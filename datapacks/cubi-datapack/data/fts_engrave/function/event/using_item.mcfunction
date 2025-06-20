# advancement revoke @s only fts_engrave:event/using_item

# scoreboard players add @s item_using_time 1

# execute unless entity @s[tag=ftsegrv_using_item] run function fts_engrave:event/using_item_start
# tag @s add ftsegrv_using_item

# execute if items entity @s weapon.* *[custom_data~{id:"ftsegrv:crystal_stick"}] run function fts_engrave:item/crystal_stick/using
