execute if entity @s[gamemode=creative] run return fail

execute if score @s cubi.weapon_flag matches 1 run item modify entity @s weapon.mainhand {function:"set_count", add:true, count:-1}

execute if score @s cubi.weapon_flag matches -1 run item modify entity @s weapon.offhand {function:"set_count", add:true, count:-1}

return 1
