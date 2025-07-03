data modify storage cubi:components args.id set value 'minecraft:enchantments'

data modify storage cubi:components args.content set from storage cubi:data args.item.components.'minecraft:enchantments'

data modify storage cubi:components args.slot set from storage cubi:data args.item.slot

$data remove storage cubi:components args.content.$(id)

function cubi:macro/remove_specific_components with storage cubi:components args
