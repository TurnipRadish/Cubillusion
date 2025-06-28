scoreboard players add @s cubi.weapon_flag 0

execute if score @s cubi.weapon_flag matches 1 run data modify storage cubi:data args.item set from entity @s SelectedItem

execute if score @s cubi.weapon_flag matches -1 run data modify storage cubi:data args.item set from entity @s equipment.offhand
