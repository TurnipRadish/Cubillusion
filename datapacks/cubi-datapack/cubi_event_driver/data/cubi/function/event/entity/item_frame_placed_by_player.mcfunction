# 事件触发 - 开始
execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:vase"}}}} run function test:block/vase/set_block

# 事件触发 - 结束

data modify entity @s data.'cubi:fake_block' set value false
