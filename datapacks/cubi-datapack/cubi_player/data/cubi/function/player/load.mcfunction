# @s = this player
scoreboard objectives add cubi.box_id dummy
scoreboard objectives add cubi.shift dummy

scoreboard objectives add cubi.player.block_interaction_range dummy

tellraw @s[tag=debug] "cubi_player loaded"
