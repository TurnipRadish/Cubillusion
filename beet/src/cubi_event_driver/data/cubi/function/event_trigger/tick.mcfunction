execute as @a at @s run function cubi:event/player/tick

# 事件触发 - 开始
execute as @e[type=text_display, tag=cubi.box, tag=cubi.base] run function cubi:player/entity/box/tick
# 事件触发 - 结束
