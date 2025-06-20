# 射线触发 - 开始
execute if entity @s[tag=debug] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0 0
# 其他代码 ...
# 射线触发 - 结束

scoreboard players add #cubi.raycast_loop_times var 1
execute if score #cubi.raycast_loop_times var matches 100.. run \
    return run function cubi:raycast/end

execute positioned ^ ^ ^0.1 \
    unless block ~ ~ ~ #cubi:air_like run \
        return run function cubi:raycast/end
execute positioned ^ ^ ^0.1 \
    if block ~ ~ ~ #cubi:air_like run \
        function cubi:raycast/shoot