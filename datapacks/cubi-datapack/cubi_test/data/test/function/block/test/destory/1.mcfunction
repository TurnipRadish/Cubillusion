data modify storage cubi:data args.id set value "item"
data modify storage cubi:data args.nbt set value {}
data modify storage cubi:data args.nbt.Item set from entity @s item
data modify storage cubi:data args.nbt.Item.count set value 1
say 1
function cubi:macro/summon with storage cubi:data args
