#arg required:(string) index
#arg optional:(string) func
tag @s add dc_trans_pivot
scoreboard players operation $tempid dc_temp = @s dc_uid
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = $tempid dc_temp run tag @s add dc_trans_display
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_trans_interaction

#检查是否存在
$execute if data storage dc:index storage.$(index) run data modify entity @s data.index set value $(index)
function dc:events/_update/execute


$execute if data storage dc:index storage.$(index) if data storage dc events.temp.target.args.func run function dc:events/trans/func with storage dc events.temp.target.args
tag @e remove dc_trans_pivot
tag @e remove dc_trans_display
tag @e remove dc_trans_interaction
