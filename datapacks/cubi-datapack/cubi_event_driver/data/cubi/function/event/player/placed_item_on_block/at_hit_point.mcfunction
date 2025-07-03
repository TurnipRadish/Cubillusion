execute if items entity @s weapon.mainhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:placed_item_on_block': {\
      enable: true\
    }\
  }\
}] run scoreboard players set @s cubi.weapon_flag 1

execute if items entity @s weapon.offhand *[custom_data~\
{\
  'cubi:event_trigger':  {\
    'cubi:placed_item_on_block': {\
      enable: true\
    }\
  }\
}] run scoreboard players set @s cubi.weapon_flag -1

function cubi:player/weapon/get_for_args

function cubi:macro/function with storage cubi:data args.item.components.'minecraft:custom_data'.'cubi:event_trigger'.'cubi:placed_item_on_block'
