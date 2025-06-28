# 射线处理
scoreboard players set #flag var 0
execute anchored eyes positioned ^ ^ ^ store result score #flag var run function #bs.raycast:run {with:{}}
execute unless score #flag var matches 1 run return fail

data modify storage cubi:data args.x set from storage bs:out raycast.hit_point[0]
data modify storage cubi:data args.y set from storage bs:out raycast.hit_point[1]
data modify storage cubi:data args.z set from storage bs:out raycast.hit_point[2]

# 交互距离处理
execute store result score @s cubi.player.block_interaction_range run attribute @s block_interaction_range get 100

execute store result score #temp var run data get storage bs:out raycast.distance 100
execute unless score #temp var <= @s cubi.player.block_interaction_range run return fail

# 成功放置
function cubi:player/weapon/used_one
function cubi:player/weapon/get_for_args
function cubi:event/get_from_args_item {id:"cubi:placeable"}
function cubi:item/custom_data/placeable/apply with storage cubi:components args
