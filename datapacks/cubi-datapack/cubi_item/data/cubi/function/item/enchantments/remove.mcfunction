data modify storage cubi:components temp.id set value 'minecraft:enchantments'
data modify storage cubi:components temp.content set from entity @s SelectedItem.components.'minecraft:enchantments'
data modify storage cubi:components temp.slot set value 'weapon'

$data remove storage cubi:components temp.content.$(id)

function cubi:macro/remove_specific_components with storage cubi:components temp

function cubi:macro/set_specific_components with storage cubi:components temp
