execute store result score #x1 var run data get storage cubi:data oper.a[0] 1000
execute store result score #y1 var run data get storage cubi:data oper.a[1] 1000
execute store result score #z1 var run data get storage cubi:data oper.a[2] 1000

execute store result score #x2 var run data get storage cubi:data oper.b[0] 1000
execute store result score #y2 var run data get storage cubi:data oper.b[1] 1000
execute store result score #z2 var run data get storage cubi:data oper.b[2] 1000

scoreboard players operation #x1 var += #x2 var
scoreboard players operation #y1 var += #y2 var
scoreboard players operation #z1 var += #z2 var

execute store result storage cubi:data output.vec3[0] double 0.001 run scoreboard players get #x1 var
execute store result storage cubi:data output.vec3[1] double 0.001 run scoreboard players get #y1 var
execute store result storage cubi:data output.vec3[2] double 0.001 run scoreboard players get #z1 var
