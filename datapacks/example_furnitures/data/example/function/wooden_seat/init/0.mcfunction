# this entity = player
# this position = the raycast hit point
tellraw @s[tag=debug] "init wooden_seat"

playsound minecraft:block.packed_mud.place

data modify storage cubi:data args.rotation set value [0f, 0f]
data modify storage cubi:data args.rotation[0] set from entity @s Rotation[0]

execute align xyz positioned ~0.5 ~ ~0.5 run function example:wooden_seat/init/1 with storage cubi:data args
