data modify storage cubi:data args.temp set value {}
data modify storage cubi:data args.temp set from storage cubi:data args.item.components.'minecraft:entity_data'
data modify storage cubi:data args.temp.id set value 'minecraft:item_frame'
data modify storage cubi:data args.temp.Item set from storage cubi:data args.item

data modify storage cubi:data args.item.components set value {}
data modify storage cubi:data args.item.components.'minecraft:entity_data' set from storage cubi:data args.temp

# function cubi:player/weapon/set_components with storage cubi:data args.item
