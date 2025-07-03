# this entity = player
# this position = the raycast hit point
tellraw @s[tag=debug] "init placed_potion"

playsound minecraft:block.glass.place

data modify storage cubi:data args.rotation set value [0f, 0f]
data modify storage cubi:data args.rotation[0] set from entity @s Rotation[0]

execute if block ~ ~ ~ #slabs positioned ~ ~0.5 ~ run return run function example:placed_potion/place/1 with storage cubi:data args

function example:placed_potion/place/1 with storage cubi:data args
