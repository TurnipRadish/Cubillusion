title @s[tag=debug] actionbar "interacted with interaction"

# 事件触发 - 开始
data modify storage cubi:data args.player set from entity @s {}
# 事件触发 - 结束

execute as @e[distance=..16, type=interaction] if data entity @s interaction at @s run function cubi:event/entity/interaction_interacted_by_player

advancement revoke @s only cubi:event/player/interacted_with_interaction