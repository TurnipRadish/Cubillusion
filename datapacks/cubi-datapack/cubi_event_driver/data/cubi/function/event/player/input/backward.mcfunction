title @s[tag=debug] actionbar "input=backward"

# 事件触发 - 开始
execute on vehicle on vehicle as @s[tag=cubi.plane_body] run function test:plane/control/backward
# 事件触发 - 结束