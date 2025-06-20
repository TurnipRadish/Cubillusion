# execute if entity @s[y_rotation=-180..-90] run say -2

# north
execute if entity @p[y_rotation=135..-135] run scoreboard players set #block_facing var 0
# east
execute if entity @p[y_rotation=-135..-45] run scoreboard players set #block_facing var 1
# south
execute if entity @p[y_rotation=-45..45] run scoreboard players set #block_facing var 2
# west
execute if entity @p[y_rotation=45..135] run scoreboard players set #block_facing var 3

# execute if score #block_facing var matches 0 run setblock ~ ~ ~ crafter[orientation=south_up]
# execute if score #block_facing var matches 1 run setblock ~ ~ ~ crafter[orientation=west_up]
# execute if score #block_facing var matches 2 run setblock ~ ~ ~ crafter[orientation=north_up]
# execute if score #block_facing var matches 3 run setblock ~ ~ ~ crafter[orientation=east_up]

