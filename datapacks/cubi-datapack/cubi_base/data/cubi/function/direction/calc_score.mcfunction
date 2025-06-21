data modify storage cubi:data output.vec3 set value [0, 0, 0]

data modify storage cubi:data output.vec3[0] set from entity @s Pos[0]
data modify storage cubi:data output.vec3[1] set from entity @s Pos[1]
data modify storage cubi:data output.vec3[2] set from entity @s Pos[2]

kill @s[type=marker]
