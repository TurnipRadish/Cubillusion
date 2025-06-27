data modify storage cubi:data args.item set from entity @s SelectedItem

data modify storage cubi:data args.rotation set value [0f, 0f]
data modify storage cubi:data args.rotation[0] set from entity @s Rotation[0]

$execute positioned $(x) $(y) $(z) align xyz positioned ~0.5 ~ ~0.5 run function test:block/test/init/1 with storage cubi:data args
