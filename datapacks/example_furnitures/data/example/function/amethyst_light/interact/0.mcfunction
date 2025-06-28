# this entity = interaction
# function cubi:entity/interaction/carry_target_at {x: 0, y:0.5, z:0}

execute unless entity @s[tag=lighting] run scoreboard players set #flag var 0

execute if entity @s[tag=lighting] run scoreboard players set #flag var 1


execute if score #flag var matches 0 run fill ~ ~ ~ ~ ~ ~ light[level=7] replace #air
execute if score #flag var matches 0 run tag @s add lighting


execute if score #flag var matches 1 run fill ~ ~ ~ ~ ~ ~ air replace light
execute if score #flag var matches 1 run tag @s remove lighting

