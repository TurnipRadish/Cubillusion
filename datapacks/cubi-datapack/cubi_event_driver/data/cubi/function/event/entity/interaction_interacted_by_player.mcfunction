# 事件触发 - 开始
execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:vase"}}}} run function test:block/vase/interact_block

execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:plane"}}}} run function cubi:entity/interaction/carry_target

## 允许玩家骑乘
execute if entity @s[tag=cubi.entity.mount] run function cubi:entity/interaction/carry_target

# 事件触发 - 结束

data remove entity @s interaction
