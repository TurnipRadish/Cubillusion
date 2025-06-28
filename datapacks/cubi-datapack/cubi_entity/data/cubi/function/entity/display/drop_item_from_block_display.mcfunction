execute unless entity @s[type=block_display] run return fail

data modify storage cubi:data args.id set value "minecraft:item"

data modify storage cubi:data args.nbt set value {}
data modify storage cubi:data args.nbt.Item set from entity @s data.item

data modify storage cubi:data args.nbt.Item.count set value 1

function cubi:motion/get_for_item_drop
data modify storage cubi:data args.nbt.Motion set from storage cubi:data output.vec3

function cubi:macro/summon with storage cubi:data args
