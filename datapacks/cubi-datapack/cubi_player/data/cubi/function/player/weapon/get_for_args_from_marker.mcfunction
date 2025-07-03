scoreboard players add @s cubi.weapon_flag 0

execute if score @s cubi.weapon_flag matches 1 run data modify storage cubi:data args.item.slot set value 'weapon.mianhand'

execute if score @s cubi.weapon_flag matches 1 run return run data modify storage cubi:data args.item set from entity @n[type=marker,distance=..1,tag=test] data.SelectedItem

execute if score @s cubi.weapon_flag matches -1 run data modify storage cubi:data args.item.slot set value 'weapon.offhand'

execute if score @s cubi.weapon_flag matches -1 run return run data modify storage cubi:data args.item set from entity @n[type=marker,distance=..1,tag=test] data.equipment.offhand

return fail
