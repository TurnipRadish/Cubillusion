title @s[tag=debug] actionbar "input=forward"

# 事件触发 - 开始
execute on vehicle on vehicle as @s[tag=cubi.plane_body] run function test:plane/control/forward
execute on vehicle on passengers as @s[type=item_display] run function test:plane/animation/forward
# 事件触发 - 结束