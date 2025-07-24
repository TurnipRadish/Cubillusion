$tellraw @p[tag=debug,distance=..16] "activated entity event = $(id)"

$function cubi:macro/function with entity @s data.'cubi:event_trigger'.$(id)
