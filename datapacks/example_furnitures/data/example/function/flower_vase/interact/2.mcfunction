say 2
data modify storage cubi:data args set value {}
data modify storage cubi:data args.id set value 'item'

data modify storage cubi:data args.nbt set value {}
data modify storage cubi:data args.nbt.Item set from entity @n[distance=..1,type=block_display,tag=cubi.flower_vase] data.item

execute on passengers as @s[type=block_display] positioned ~ ~1 ~ run function cubi:entity/display/drop_item_from_block_display

# function cubi:macro/summon with storage cubi:data args

kill @n[distance=..1,type=block_display,tag=cubi.flower_vase]
tag @s remove has_flower
