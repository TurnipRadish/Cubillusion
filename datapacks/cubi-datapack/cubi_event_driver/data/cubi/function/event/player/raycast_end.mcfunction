title @s[tag=debug] actionbar "raycast_end"

# 开始
execute as @s if items entity @s weapon.* *[custom_data~{id:'test'}] if function cubi:condition/can_place_block positioned ^ ^ ^-0.1 align xyz run function test:set_block
# 其他代码 ...
# 结束
