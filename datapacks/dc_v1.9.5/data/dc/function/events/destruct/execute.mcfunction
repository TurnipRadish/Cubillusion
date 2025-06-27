#args(optional): particle,sound,item

function dc:events/_general/particle with storage dc events.temp.target.args
function dc:events/_general/sound with storage dc events.temp.target.args

tag @s add dc_destruct
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[limit=1,tag=dc_destruct,sort=nearest] dc_uid run tag @s add dc_display_clear

execute if data storage dc events.temp.target.args.item if entity @a[tag=dc_click_temp,gamemode=!creative] run function dc:events/destruct/item


kill @e[tag=dc_display_clear]
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = @e[limit=1,tag=dc_destruct,sort=nearest] dc_uid run tag @s add dc_interaction_clear

schedule function dc:events/destruct/delay 4t

kill @s