# 事件触发 - 开始
execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:vase"}}}} run function test:block/vase/interact_block

execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:plane"}}}} run function cubi:entity/interaction/carry_target

## 允许玩家骑乘
execute if entity @s[tag=cubi.entity.mount] run function cubi:entity/interaction/carry_target

execute if predicate {\
  "condition":"entity_properties",\
  "entity":"this",\
  "predicate":{\
    "predicates": {\
      "custom_data": {\
        'cubi:event_trigger':  {\
          'cubi:player_interacted_with_interaction': {\
            "enable": true\
          }\
        }\
      }\
    }\
  } \
} run function cubi:event/entity/event_trigger/activate {id:'cubi:player_interacted_with_interaction'}

# 事件触发 - 结束

data remove entity @s interaction
