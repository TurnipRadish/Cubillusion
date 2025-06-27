scoreboard players set #installing dc_options 1
execute unless score $silent_register dc_options matches 1 run tellraw @a {"text": "模型注册中，请稍等……"}

function dc:index/_install/start