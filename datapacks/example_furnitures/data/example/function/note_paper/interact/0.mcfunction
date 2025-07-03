# this entity = interaction

execute on target unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * run return fail

execute on target if items entity @s weapon.mainhand * run scoreboard players set @s cubi.weapon_flag 1
execute on target if items entity @s weapon.offhand * run scoreboard players set @s cubi.weapon_flag -1
execute on target run function cubi:player/weapon/get_for_args

execute unless entity @s[tag=has_note] run return run function example:note_paper/interact/1

execute if entity @s[tag=has_note] on passengers as @s[type=text_display,tag=example.note_paper] run return run function example:note_paper/interact/2

