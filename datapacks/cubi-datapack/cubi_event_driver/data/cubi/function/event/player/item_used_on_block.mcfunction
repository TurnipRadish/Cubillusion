title @s[tag=debug] actionbar "item_used_on_block"

# scoreboard players set #flag var 0
# 事件触发 - 开始
# execute as @e[distance=..16, type=item_frame, tag=cubi.fake_block] store result score #flag var run function cubi:event/entity/item_frame_placed_by_player

# execute if score #flag var matches 0 anchored eyes run function cubi:raycast/start
# 事件触发 - 结束

advancement revoke @s only cubi:event/player/item_used_on_block