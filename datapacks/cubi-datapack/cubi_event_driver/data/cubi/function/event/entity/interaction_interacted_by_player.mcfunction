data remove entity @s interaction

# 事件触发 - 开始
execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:vase"}}}} run function test:block/vase/interact_block

# 事件触发 - 结束


