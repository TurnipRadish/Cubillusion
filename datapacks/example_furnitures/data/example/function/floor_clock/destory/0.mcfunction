# this entity = interaction
scoreboard players set #flag var 0

execute on attacker if entity @s[gamemode=!creative] run scoreboard players set #flag var 1

execute on vehicle as @s[tag=cubi.entity.root] run function example:floor_clock/destory/1
