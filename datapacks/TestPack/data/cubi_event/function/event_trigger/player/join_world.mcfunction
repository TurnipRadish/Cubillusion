advancement revoke @s only cubi_event:event_trigger/player/join_world
tellraw @a[tag=debug] [{selector:'@s'},{text:' joined the world'}]
execute if score @s cubi.player.leave_game_count matches 1.. run scoreboard players add @s cubi.player.leave_game_count 1
scoreboard players set @s cubi.player.leave_game 0