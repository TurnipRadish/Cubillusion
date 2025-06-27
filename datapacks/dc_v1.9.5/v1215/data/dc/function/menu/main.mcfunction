tellraw @s {text:"==============",color:"dark_green","extra": [{text: "设置",color: "gold"},{text: "==============",color: "dark_green"}]}

execute if score $auto_install dc_options matches 0 run tellraw @s {text: "重载时自动注册模型：",color:"aqua","extra": [{text: "[关]",color: "red",click_event: {"action": "run_command",command: "/function dc:menu/auto_install/enable"},"hoverEvent": {"action": "show_text","contents": {text: "开启后，每次reload自动刷新并注册模型"}}}]}
execute if score $auto_install dc_options matches 1 run tellraw @s {text: "重载时自动注册模型：",color:"aqua","extra": [{text: "[开]",color: "green",click_event: {"action": "run_command",command: "/function dc:menu/auto_install/disable"},"hoverEvent": {"action": "show_text","contents": {text: "开启后，每次reload自动刷新并注册模型"}}}]}

execute if score $silent_update dc_options matches 0 run tellraw @s {text: "静默更新模型：",color:"aqua","extra": [{text: "[关]",color: "red",click_event: {"action": "run_command",command: "/function dc:menu/silent_update/enable"},"hoverEvent": {"action": "show_text","contents": {text: "开启后，更新模型时不再在聊天栏告知玩家"}}}]}
execute if score $silent_update dc_options matches 1 run tellraw @s {text: "静默更新模型：",color:"aqua","extra": [{text: "[开]",color: "green",click_event: {"action": "run_command",command: "/function dc:menu/silent_update/disable"},"hoverEvent": {"action": "show_text","contents": {text: "开启后，更新模型时不再在聊天栏告知玩家"}}}]}

execute if score $silent_register dc_options matches 0 run tellraw @s {text: "静默注册模型：",color:"aqua","extra": [{text: "[关]",color: "red",click_event: {"action": "run_command",command: "/function dc:menu/silent_register/enable"},"hoverEvent": {"action": "show_text","contents": {text: "开启后，注册模型及完成时不再在聊天栏告知玩家"}}}]}
execute if score $silent_register dc_options matches 1 run tellraw @s {text: "静默注册模型：",color:"aqua","extra": [{text: "[开]",color: "green",click_event: {"action": "run_command",command: "/function dc:menu/silent_register/disable"},"hoverEvent": {"action": "show_text","contents": {text: "开启后，注册模型及完成时不再在聊天栏告知玩家"}}}]}

tellraw @s {text:"================================",color:"dark_green"}