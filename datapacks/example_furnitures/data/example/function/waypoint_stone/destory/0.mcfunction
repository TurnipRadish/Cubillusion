# this entity = interaction
fill ~ ~ ~ ~ ~ ~ air replace chain

particle block_crumble{block_state:"lodestone"} ~ ~0.5 ~ 0.5 0.5 0.5 0.1 10

scoreboard players set #flag var 0

execute on attacker if entity @s[gamemode=!creative] run scoreboard players set #flag var 1

execute on vehicle as @s[tag=cubi.entity.root] run function example:waypoint_stone/destory/1
