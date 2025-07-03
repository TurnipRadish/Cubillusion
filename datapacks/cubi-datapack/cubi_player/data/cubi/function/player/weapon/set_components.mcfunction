$execute if score @s cubi.weapon_flag matches 1 run item modify entity @s weapon.mainhand {\
  "function": "set_components",\
  "components": $(components)\
}

$execute if score @s cubi.weapon_flag matches -1 run item modify entity @s weapon.offhand {\
  "function": "set_components",\
  "components": $(components)\
}