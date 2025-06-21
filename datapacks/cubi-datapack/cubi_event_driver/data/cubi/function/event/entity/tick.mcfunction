execute as @s[type=player] run function cubi:event/player/tick

execute as @s[type=text_display, tag=cubi.box, tag=cubi.base] run function cubi:player/entity/box/tick
