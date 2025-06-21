scoreboard players set #temp var 0
execute if items entity @s weapon.mainhand apple run scoreboard players set #temp var 1
execute if score #temp var matches 0 run return fail


data modify storage cubi:data args.data.foods set from entity @s SelectedItem
data modify storage cubi:data args.slot set value "weapon.offhand"
function cubi:item/oper/set_custom_data_from with storage cubi:data args

execute if score #temp var matches 1 run data modify storage cubi:data args.lore set value [[" ", {text:"酱芯", italic:false, color:"#FF8000"}]]
data modify storage cubi:data args.slot set value "weapon.offhand"
function cubi:item/oper/set_lore with storage cubi:data args

item modify entity @s weapon.mainhand {function:"set_count", add:true, count:-1}

execute if score #temp var matches 1 run item modify entity @s weapon.offhand {function:"set_custom_model_data", strings:{mode:"append", values:["apple"]}}
