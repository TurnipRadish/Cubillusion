data modify entity @s data.test set value 1
execute if data entity @s data.index run function dc:construct/index with entity @s data


execute unless data entity @s data.test run function dc:construct/summon
tag @a remove dc_player
kill @s

