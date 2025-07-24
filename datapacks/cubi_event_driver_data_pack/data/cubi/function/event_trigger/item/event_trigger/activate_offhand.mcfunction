$tellraw @s[tag=debug] "activated item event = $(id) in offhand"

scoreboard players set @s cubi.weapon_flag -1

data modify storage cubi:data args.item set from entity @s equipment.offhand

$function cubi:macro/function with storage cubi:data args.item.components.'minecraft:custom_data'.'cubi:event_trigger'.'$(id)'

return -1
