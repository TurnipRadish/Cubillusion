# this entity = player
# this position = the raycast hit point
tellraw @s[tag=debug] "init floor_clock"

playsound minecraft:block.packed_mud.place

execute align xyz positioned ~0.5 ~ ~0.5 rotated ~180 0 run function example:floor_clock/place/1 with storage cubi:data args
