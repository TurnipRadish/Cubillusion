execute if data entity @s data.'cubi:item' run return fail

data modify entity @s block_state.Name set from storage cubi:data args.player.SelectedItem.id

execute if data entity @s block_state{Name:'minecraft:air'} run return fail

data modify entity @s data.'cubi:item' set from storage cubi:data args.player.SelectedItem
data modify entity @s data.'cubi:item'.count set value 1

return 1
# execute unless items entity @s[gamemode=survival] weapon.mainhand * run item modify entity @s weapon.mainhand {function:"set_count", add:true, count:-1}
