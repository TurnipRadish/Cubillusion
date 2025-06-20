function cubi:raycast/start

execute if items entity @s[gamemode=survival] weapon.mainhand *[custom_data~{id:'test'}] run item modify entity @s weapon.mainhand {function:"set_count", add:true, count:-1}

execute unless items entity @s[gamemode=survival] weapon.mainhand *[custom_data~{id:'test'}] if items entity @s weapon.offhand *[custom_data~{id:'test'}] run item modify entity @s weapon.mainhand {function:"set_count", add:true, count:-1}
