title @s[tag=debug] actionbar "player_hurt_entity"

# 事件触发 - 开始

# 事件触发 - 结束

execute as @e[distance=..16, type=interaction] if data entity @s attack at @s run function cubi:event_trigger/entity/interaction_attacked_by_player

advancement revoke @s only cubi:event_trigger/player/hurt_entity