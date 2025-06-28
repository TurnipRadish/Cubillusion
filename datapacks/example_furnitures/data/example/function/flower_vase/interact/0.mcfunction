# this entity = interaction
# function cubi:entity/interaction/carry_target_at {x: 0, y:0.5, z:0}

execute on target run scoreboard players set @s cubi.weapon_flag 0
execute on target if items entity @s weapon.mainhand #flowers run scoreboard players set @s cubi.weapon_flag 1
execute on target if items entity @s weapon.offhand #flowers run scoreboard players set @s cubi.weapon_flag -1


execute on target run scoreboard players operation #flag var = @s cubi.weapon_flag

execute unless score #flag var matches 0 if entity @s[tag=!has_flower] run function example:flower_vase/interact/1

execute if score #flag var matches 0 if entity @s[tag=has_flower] run function example:flower_vase/interact/2



