# 事件触发 - 开始
execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:vase"}}}} run function test:block/vase/break_block

execute if predicate {condition:"entity_properties", entity:"this", predicate:{predicates:{custom_data:{id:"cubi:plane"}}}} run function test:plane/destory

execute if predicate {\
  "condition":"entity_properties",\
  "entity":"this",\
  "predicate":{\
    "predicates": {\
      "custom_data": {\
        'cubi:event_trigger':  {\
          'cubi:player_hurt_entity': {\
            "enable": true\
          }\
        }\
      }\
    }\
  } \
} run function cubi:event/entity/event_trigger/activate {id:'cubi:player_hurt_entity'}

# 事件触发 - 结束

data remove entity @s attack
