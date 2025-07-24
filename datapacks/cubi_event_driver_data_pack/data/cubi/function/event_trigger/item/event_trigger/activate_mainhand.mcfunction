$tellraw @s[tag=debug] "activated item event = $(id) in mainhand"

scoreboard players set @s cubi.weapon_flag 1

data modify storage cubi:data args.item set from entity @s SelectedItem

$function cubi:macro/function with storage cubi:data args.item.components.'minecraft:custom_data'.'cubi:event_trigger'.'$(id)'

return 1
