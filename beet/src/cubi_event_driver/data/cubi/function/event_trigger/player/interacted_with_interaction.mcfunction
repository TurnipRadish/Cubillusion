title @s[tag=debug] actionbar "interacted with interaction"

# 事件触发 - 开始
function cubi:player/event/interacted_with_interaction
# 事件触发 - 结束

execute as @e[distance=..16, type=interaction] if data entity @s interaction at @s run function cubi:event_trigger/entity/interaction_interacted_by_player

#@ 替换 event event_trigger
advancement revoke @s only cubi:event_trigger/player/interacted_with_interaction
