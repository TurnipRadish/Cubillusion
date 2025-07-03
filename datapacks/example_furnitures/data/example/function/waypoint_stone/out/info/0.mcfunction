# this entity = interaction
data remove storage example:out waypoint_stones
data modify storage example:out waypoint_stones set value []

scoreboard players set #temp var 0

execute as @e[distance=1..,sort=nearest,tag=example.waypoint_stone,tag=cubi.entity.root,limit=6] at @s run function example:waypoint_stone/out/info/1