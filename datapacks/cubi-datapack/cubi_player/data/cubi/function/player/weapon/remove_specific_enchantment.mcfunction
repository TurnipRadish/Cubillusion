execute if score @s cubi.weapon_flag matches 1 run item modify entity @s weapon.mainhand { \
  "function": "set_components", \
  "components": { \
    "!enchantments": {} \
  } \
}
execute if score @s cubi.weapon_flag matches -1 run item modify entity @s weapon.offhand { \
  "function": "set_components", \
  "components": { \
    "!enchantments": {} \
  } \
}
# 暂存魔咒组件
data modify storage cubi:data args.temp set from storage cubi:data args.item.components.'minecraft:enchantments'
# 清除物品的其他组件，确保仅设置魔咒组件
data modify storage cubi:data args.item.components set value {}
data modify storage cubi:data args.item.components.'minecraft:enchantments' set from storage cubi:data args.temp
# 移除魔咒
$data remove storage cubi:data args.item.components.'minecraft:enchantments'.$(id)
# 设置被移除了指定魔咒的魔咒组件
function cubi:player/weapon/set_components with storage cubi:data args.item
