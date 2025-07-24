# 在眼睛位置发出射线并检查射线是否击中方块
scoreboard players set #flag var 0
execute anchored eyes positioned ^ ^ ^ store result score #flag var run function #bs.raycast:run {with:{}}
execute unless score #flag var matches 1 run return fail

data modify storage cubi:data args.x set from storage bs:out raycast.hit_point[0]
data modify storage cubi:data args.y set from storage bs:out raycast.hit_point[1]
data modify storage cubi:data args.z set from storage bs:out raycast.hit_point[2]

# 放置距离根据玩家属性block_interaction_range变化
execute store result score @s cubi.player.block_interaction_range run attribute @s block_interaction_range get 100

execute store result score #temp var run data get storage bs:out raycast.distance 100
execute unless score #temp var <= @s cubi.player.block_interaction_range run return fail

# 成功放置
# function cubi:player/weapon/get_for_args
tellraw @s[tag=debug] "placed_item_on_block"

# 事件触发 - 开始
data modify storage cubi:data args.command set value "function cubi:event/player/placed_item_on_block/at_hit_point"

function cubi:position/set_position_and_run_command with storage cubi:data args
# 事件触发 - 结束

function cubi:player/weapon/used_one

