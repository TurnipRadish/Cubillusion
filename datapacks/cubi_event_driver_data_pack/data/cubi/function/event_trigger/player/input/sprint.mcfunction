title @s[tag=debug] actionbar "input=left"

# 事件触发 - 开始
execute if entity @s[x_rotation=-90..-1] on vehicle on vehicle as @s[tag=cubi.plane_body] run function test:plane/control/sprint

execute if entity @s[x_rotation=1..90] on vehicle on vehicle as @s[tag=cubi.plane_body] run function test:plane/control/up
execute if entity @s[x_rotation=1..90] on vehicle on passengers as @s[type=item_display] run function test:plane/animation/up
# 事件触发 - 结束