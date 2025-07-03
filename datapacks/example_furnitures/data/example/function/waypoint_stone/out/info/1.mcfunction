scoreboard players add #temp var 1

execute store result storage cubi:data args.signal int 1 run scoreboard players get #temp var

data modify storage cubi:data args.text set value {"text":'未命名路标石'}
data modify storage cubi:data args.text set from entity @n[tag=example.waypoint_stone.text,distance=..1] CustomName

function example:waypoint_stone/out/info/2 with storage cubi:data args
