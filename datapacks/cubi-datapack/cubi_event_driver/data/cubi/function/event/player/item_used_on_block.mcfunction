title @s[tag=debug] actionbar "item_used_on_block"

# 事件触发 - 开始
# execute if items entity @s weapon.* *[custom_data~{id:'test_block'}] run say 1
# 事件触发 - 结束

execute as @e[distance=..16, type=item_frame] if predicate cubi:fake_block_prototype run function cubi:event/entity/item_frame_placed_by_player

advancement revoke @s only cubi:event/player/item_used_on_block