data remove entity @s attack

# 事件触发 - 开始
execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:vase"}}}} run function test:block/vase/break_block

# 事件触发 - 结束
