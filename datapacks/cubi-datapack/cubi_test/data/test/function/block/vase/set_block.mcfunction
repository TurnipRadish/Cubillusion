data modify storage cubi:data args.list set value []

data modify storage cubi:data args.list append value {name:"placer"}
data modify storage cubi:data args.list[-1].uuid set from entity @p[distance=..0.1] UUID

data modify storage cubi:data args.list append value {name:"body"}
data modify storage cubi:data args.list[-1].uuid set from entity @s UUID

execute at @s align xyz positioned ~ ~1 ~ summon block_display run function test:block/vase/set_block/set_plant

execute at @s align xyz positioned ~0.5 ~ ~0.5 summon interaction run function test:block/vase/set_block/set_interaction
