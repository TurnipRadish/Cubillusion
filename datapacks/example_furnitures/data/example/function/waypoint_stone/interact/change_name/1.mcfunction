scoreboard players set @s cubi.weapon_flag 0

execute if items entity @s weapon.mainhand name_tag run scoreboard players set @s cubi.weapon_flag 1

execute if items entity @s weapon.offhand name_tag run scoreboard players set @s cubi.weapon_flag -1

function cubi:player/weapon/get_for_args
