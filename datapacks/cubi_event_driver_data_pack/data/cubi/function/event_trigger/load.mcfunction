scoreboard objectives add cubi.player_used_carrot_on_a_stick minecraft.used:carrot_on_a_stick
scoreboard objectives add cubi.player_using_item_tick dummy
scoreboard objectives add cubi.player_using_item_last_tick dummy
scoreboard objectives add cubi.player_selected_slot dummy
scoreboard objectives add cubi.player_selected_last_slot dummy
scoreboard objectives add cubi.roller_dir dummy
scoreboard objectives add cubi.roller_dir.0 dummy
scoreboard objectives add cubi.roller_dir.1 dummy
scoreboard objectives add cubi.roller_dir.2 dummy
scoreboard objectives add cubi.player_sprint minecraft.custom:sprint_one_cm
scoreboard objectives add cubi.player_sprint_last dummy
scoreboard objectives add cubi.player_walk minecraft.custom:walk_one_cm
scoreboard objectives add cubi.player_walk_last dummy

scoreboard objectives add cubi.weapon_flag dummy

function cubi:event/player/load
