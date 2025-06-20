# function cubi:item_handler/replace_from_player_mianhand
# 获取事件
data modify storage cubi:data args.event set from entity @s SelectedItem.components.'minecraft:custom_data'.'cubi:event'
$say $(event_type)
# 判断是否带有监听标志
$execute unless data storage cubi:data args.event.'$(event_type)'{listening:true} run return fail
# 若有监听标志，则读取函数名和函数参数
$data modify storage cubi:data args.function set from storage cubi:data args.event.'$(event_type)'.function
$data modify storage cubi:data args.function set from storage cubi:data args.event.'$(event_type)'.args
# 执行函数
function cubi:run_function_with_var_refer with storage cubi:data args
return 1
