# this entity = interaction
scoreboard players set #flag var 0

execute on attacker if entity @s[gamemode=!creative] run scoreboard players set #flag var 1

execute if score #flag var matches 1 on passengers run function example:wooden_seat/destory/1

execute on passengers run kill @s
kill @s
