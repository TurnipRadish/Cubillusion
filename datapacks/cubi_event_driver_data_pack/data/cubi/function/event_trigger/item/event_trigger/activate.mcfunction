$execute if items entity @s weapon.mainhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    '$(id)': {\
      enable: true\
    }\
  }\
}] run return run function cubi:event/item/event_trigger/activate_mainhand {id:'$(id)'}

$execute if items entity @s weapon.offhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    '$(id)': {\
      enable: true\
    }\
  }\
}] run return run function cubi:event/item/event_trigger/activate_offhand {id:'$(id)'}
