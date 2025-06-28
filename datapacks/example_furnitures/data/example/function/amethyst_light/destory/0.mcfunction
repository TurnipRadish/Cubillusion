# this entity = interaction
playsound block.amethyst_block.break block @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players set #flag var 0

execute on attacker if entity @s[gamemode=!creative] run scoreboard players set #flag var 1

execute if score #flag var matches 1 on passengers run function example:amethyst_light/destory/1

execute if entity @s[tag=lighting] run fill ~ ~ ~ ~ ~ ~ air replace light

execute on passengers run kill @s
kill @s
