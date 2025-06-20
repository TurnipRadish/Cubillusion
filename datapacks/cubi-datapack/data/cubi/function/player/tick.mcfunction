# scoreboard players remove @s[scores={var=1..}] var 1

# execute if score @s var matches 1.. run function cubi:test

scoreboard players operation #temp var = @s item_using_time
scoreboard players operation #temp var -= @s last_item_using_time
execute as @s[tag=using_item] if score #temp var matches 0 run function cubi:item/using_stop
scoreboard players operation @s last_item_using_time = @s item_using_time


execute if items entity @s player.crafting.* *[minecraft:custom_data~{id:"cubi:melt_box"}] if items entity @s player.crafting.* slime_ball run function cubi:item/melt_box/craft_slime