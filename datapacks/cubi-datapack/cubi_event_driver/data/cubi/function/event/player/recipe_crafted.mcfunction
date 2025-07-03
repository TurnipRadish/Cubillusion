title @s[tag=debug] actionbar "recipe_crafted"

# 事件触发 - 开始

# item modify entity @s player.cursor {function:"set_item", item:"apple"}

# 事件触发 - 结束

advancement revoke @s only cubi:event/player/recipe_crafted