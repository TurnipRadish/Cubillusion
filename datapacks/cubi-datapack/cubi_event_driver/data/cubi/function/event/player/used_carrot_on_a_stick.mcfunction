# 事件触发 - 开始
function #cubi:event/player_used_carrot_on_a_stick

execute if items entity @s weapon.mainhand *[custom_data~{id:'test'}] anchored eyes run function test:place_block

# 事件触发 - 结束
scoreboard players reset @s cubi.player_used_carrot_on_a_stick
